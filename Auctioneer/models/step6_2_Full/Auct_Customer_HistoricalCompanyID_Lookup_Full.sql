{{ config(materialized='table',schema='stg')}}

With Auct_Customer_HistoricalCompanyID_CTE AS (
    SELECT 
        [CustomerAccountID],
        STRING_AGG([CompanyID], ',') AS [CompanyID]
    FROM (
        SELECT 
            cxacct.[CustomerAccountID],
            cxacct.[CompanyID]
        FROM [Auct_CustomerAccount_FinalView] cxacct -- (Update) need replace [dbo].[Auct_CustomerAccount_Ex] with [dbo].[Auct_CustomerAccount]
        WHERE COALESCE(cxacct.[CustomerAccountID], cxacct.[CompanyID]) IS NOT NULL 
            AND cxacct.[CompanyID] IS NOT NULL
        UNION
        SELECT 
            addrmrg.[CustomerAccountID],
            addrmrg.[CurrentCompanyID] AS [CompanyID]
        FROM [stg].[Auct_Address_Merge_Full] addrmrg
        WHERE COALESCE(addrmrg.[CustomerAccountID], addrmrg.[CurrentCompanyID]) IS NOT NULL 
            AND addrmrg.[CurrentCompanyID] IS NOT NULL
        ) AS temp1
    GROUP BY [CustomerAccountID]
)

SELECT 
    [CustomerAccountID],
    [CompanyID]
FROM Auct_Customer_HistoricalCompanyID_CTE