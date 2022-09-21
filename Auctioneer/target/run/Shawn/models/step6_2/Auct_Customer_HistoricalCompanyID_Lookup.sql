
  
  if object_id ('"stg"."Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp"
    end


   EXEC('create view stg.Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp_temp_view as
    

With Auct_Customer_HistoricalCompanyID_CTE AS (
    SELECT 
        [CustomerAccountID],
        STRING_AGG([CompanyID], '','') AS [CompanyID]
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
        FROM [stg].[Auct_Address_Merge] addrmrg
        WHERE COALESCE(addrmrg.[CustomerAccountID], addrmrg.[CurrentCompanyID]) IS NOT NULL 
            AND addrmrg.[CurrentCompanyID] IS NOT NULL
        ) AS temp1
    GROUP BY [CustomerAccountID]
)

SELECT 
    [CustomerAccountID],
    [CompanyID]
FROM Auct_Customer_HistoricalCompanyID_CTE
    ');

  CREATE TABLE "stg"."Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customer_HistoricalCompanyID_Lookup__dbt_tmp_temp_view"
    end


