{{ config(materialized='table',schema='stg')}}


-- DECLARE @MaxValidDate AS DATETIME;
-- SET @MaxValidDate='9999-12-31';



With Auct_Contact_Ex AS (
	 select * from stg.[Auct_Contact_FinalView]
),
Auct_CustomerAccount_Ex AS (
	 select * from stg.[Auct_CustomerAccount_FinalView]
),
Auct_Emails_Ex AS (
	 select * from stg.[Auct_Emails_FinalView]
),
Auct_Invoice_Ex AS (
	 select * from stg.[Auct_Invoice_FinalView]
),

Email_merged_CTE AS (
    SELECT 
        [CustomerAccountID],
        [ContactID],
        [Email],
        [Email_Cleaned],
        [IsActiveEmail],
        [EmailBlastOptIn],
        [EffectiveStartDate], 
        [EffectiveEndDate],
        CASE WHEN [NewRowNumber]='1' 
            THEN '1'
        ELSE '0'
        END AS [IsCurrent]
    FROM (
        SELECT 
            [CustomerAccountID],
            [ContactID],
            [Email],
            [Email_Cleaned],
            [IsActiveEmail],
            [EmailBlastOptIn],
            [EffectiveStartDate],
            ISNULL([EffectiveEndDate], '{{ var('MaxValidDate') }}') AS [EffectiveEndDate],
            ROW_NUMBER() OVER(
                PARTITION BY [CustomerAccountID], [ContactID]
                ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], '{{ var('MaxValidDate') }}') DESC
            ) AS [NewRowNumber]
        FROM (
            SELECT 
                [CustomerAccountID],
                [ContactID],
                [Email],
                [Email_Cleaned],
                [IsActiveEmail],
                NULLIF([EmailBlastOptIn], '') AS [EmailBlastOptIn],
                [Created] AS [EffectiveStartDate],
                LEAD([Created]) OVER(
                    PARTITION BY [CustomerAccountID], [ContactID]
                    ORDER BY [CustomerAccountID], [ContactID], [Created]
                ) AS [EffectiveEndDate],
                ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID], [ContactID], [Email], [IsActiveEmail], NULLIF([EmailBlastOptIn], ''), [Created]
                    ORDER BY [CustomerAccountID], [ContactID], [Email], [IsActiveEmail], NULLIF([EmailBlastOptIn], ''), [Created]
                ) AS [RowNumber]
            FROM (
                SELECT 
                    cxacct.[CustomerAccountID], 
                    con.[ContactID],
                    con.[Email], -- (Update) con.[Email], OR con.[Email] AS [Email], 
                    con.[Email_Cleaned],
                    con.[Active] AS [IsActiveEmail], -- (Update) con.[IsActive] AS [IsActiveEmail], OR con.[Active] AS [IsActiveEmail],
                    '' as [EmailBlastOptIn],
                    con.[Created]
                FROM [Auct_Contact_Ex] con -- FROM .[Auct_Contact_Ex] con -- (Update) need replace .[Auct_Contact_Ex] with .[Auct_Contact_Ex] !!!
                LEFT JOIN [Auct_CustomerAccount_Ex] cxacct -- (Update) need replace .[Auct_CustomerAccount_Ex] with .[Auct_CustomerAccount]
                    ON con.[ContactID]=cxacct.[ContactID]
                LEFT JOIN [Auct_Invoice_Ex] inv -- (Update) need replace .[Auct_Invoice_Ex] with .[Auct_Invoice]
                    ON cxacct.[ContactID]=inv.[ContactID]
                WHERE NULLIF(con.[Email], '') IS NOT NULL -- (Update) WHERE NULLIF(con.[Email], '') IS NOT NULL OR NULLIF(con.[Email], '') IS NOT NULL
                UNION 
                SELECT
                    email.[CustomerAccountID],
                    email.[ContactID],
                    email.[Email], -- (Update) email.[Email], or email.[Email], 
                    email.[Email_Cleaned],
                    email.[Active], -- (Update) email.[IsActive], OR email.[Active],
                    email.[EmailBlastOptIn],
                    email.[Created]
                FROM [Auct_Emails_Ex] email -- need replace .[Auct_Emails_Ex] with .[Auct_Emails_Ex]
                WHERE NULLIF(email.[Email], '') IS NOT NULL -- (Update) WHERE NULLIF(email.[Email], '') IS NOT NULL OR WHERE NULLIF(email.[Email], '') IS NOT NULL
                ) AS temp1
            ) AS temp2
        WHERE [RowNumber]=1
        ) AS temp3
)
SELECT 
    [CustomerAccountID],
    [ContactID],
    -- [Name],
    [Email],
    [Email_Cleaned],
    [IsActiveEmail],
    [EmailBlastOptIn],
    [EffectiveStartDate], 
    [EffectiveEndDate],
    [IsCurrent]
FROM Email_merged_CTE
