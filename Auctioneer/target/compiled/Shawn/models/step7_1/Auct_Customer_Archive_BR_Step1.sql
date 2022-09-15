
-- Auct_CA_ValidDateRanges
With ValidDates AS (
    SELECT [CustomerAccountID], [EffectiveStartDate] AS [Date] FROM [stg].[Auct_Email_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveEndDate] AS [Date] FROM [stg].[Auct_Email_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveStartDate] AS [Date] FROM [stg].[Auct_Phone_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveEndDate] AS [Date] FROM [stg].[Auct_Phone_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveStartDate] AS [Date] FROM [stg].[Auct_Address_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveEndDate] AS [Date] FROM [stg].[Auct_Address_Merge_NoNull]
),
list as (
 SELECT 
        [CustomerAccountID],
        [EffectiveStartDate],
        [EffectiveEndDate]
    FROM (
        SELECT 
            [CustomerAccountID],
            [Date] AS [EffectiveStartDate],
            LEAD([Date], 1) OVER(
                                PARTITION BY [CustomerAccountID]
                                ORDER BY [Date]
            ) AS [EffectiveEndDate]
        FROM ValidDates
        ) AS temp1
    WHERE [EffectiveEndDate] IS NOT NULL 

)

select * from list