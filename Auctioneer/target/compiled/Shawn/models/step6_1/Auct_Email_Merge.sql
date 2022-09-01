


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
        [EmailAddress],
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
            [EmailAddress],
            [IsActiveEmail],
            [EmailBlastOptIn],
            [EffectiveStartDate],
            ISNULL([EffectiveEndDate], '9999-12-31') AS [EffectiveEndDate],
            ROW_NUMBER() OVER(
                PARTITION BY [CustomerAccountID], [ContactID]
                ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], '9999-12-31') DESC
            ) AS [NewRowNumber]
        FROM (
            SELECT 
                [CustomerAccountID],
                [ContactID],
                [EmailAddress],
                [IsActiveEmail],
                NULLIF([EmailBlastOptIn], '') AS [EmailBlastOptIn],
                [Created] AS [EffectiveStartDate],
                LEAD([Created]) OVER(
                    PARTITION BY [CustomerAccountID], [ContactID]
                    ORDER BY [CustomerAccountID], [ContactID], [Created]
                ) AS [EffectiveEndDate],
                ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID], [ContactID], [EmailAddress], [IsActiveEmail], NULLIF([EmailBlastOptIn], ''), [Created]
                    ORDER BY [CustomerAccountID], [ContactID], [EmailAddress], [IsActiveEmail], NULLIF([EmailBlastOptIn], ''), [Created]
                ) AS [RowNumber]
            FROM (
                SELECT 
                    cxacct.[CustomerAccountID], 
                    con.[ContactID],
                    con.[EmailAddress] AS [EmailAddress], -- (Update) con.[EmailAddress], OR con.[EmailAddress] AS [EmailAddress], 
                    con.[Active] AS [IsActiveEmail], -- (Update) con.[IsActive] AS [IsActiveEmail], OR con.[Active] AS [IsActiveEmail],
                    ''[EmailBlastOptIn],
                    con.[Created]
                FROM [Auct_Contact_Ex] con -- FROM .[Auct_Contact_Ex] con -- (Update) need replace .[Auct_Contact_Ex] with .[Auct_Contact_Ex] !!!
                LEFT JOIN [Auct_CustomerAccount_Ex] cxacct -- (Update) need replace .[Auct_CustomerAccount_Ex] with .[Auct_CustomerAccount]
                    ON con.[ContactID]=cxacct.[ContactID]
                LEFT JOIN [Auct_Invoice_Ex] inv -- (Update) need replace .[Auct_Invoice_Ex] with .[Auct_Invoice]
                    ON cxacct.[ContactID]=inv.[ContactID]
                WHERE NULLIF(con.[EmailAddress], '') IS NOT NULL -- (Update) WHERE NULLIF(con.[EmailAddress], '') IS NOT NULL OR NULLIF(con.[EmailAddress], '') IS NOT NULL
                UNION 
                SELECT
                    email.[CustomerAccountID],
                    email.[ContactID],
                    email.[EmailAddress], -- (Update) email.[EmailAddress], or email.[EmailAddress], 
                    email.[Active], -- (Update) email.[IsActive], OR email.[Active],
                    email.[EmailBlastOptIn],
                    email.[Created]
                FROM [Auct_Emails_Ex] email -- need replace .[Auct_Emails_Ex] with .[Auct_Emails_Ex]
                WHERE NULLIF(email.[EmailAddress], '') IS NOT NULL -- (Update) WHERE NULLIF(email.[EmailAddress], '') IS NOT NULL OR WHERE NULLIF(email.[EmailAddress], '') IS NOT NULL
                ) AS temp1
            ) AS temp2
        WHERE [RowNumber]=1
        ) AS temp3
)
SELECT 
    [CustomerAccountID],
    [ContactID],
    -- [Name],
    [EmailAddress],
    [IsActiveEmail],
    [EmailBlastOptIn],
    [EffectiveStartDate], 
    [EffectiveEndDate],
    [IsCurrent]
FROM Email_merged_CTE