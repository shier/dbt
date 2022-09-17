
  
  if object_id ('"dbo"."Auct_ContactCompany__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactCompany__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContactCompany__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContactCompany__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContactCompany__dbt_tmp_temp_view as
    
Select
	cast([ContactCompanyID] as int) [CONTACTCOMPANYID],
	cast([CompanyContactTypeID] as int) [COMPANYCONTACTTYPEID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DealerID] as int) [DEALERID] 
From stg.[Auct_ContactCompany_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContactCompany__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContactCompany__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContactCompany__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactCompany__dbt_tmp_temp_view"
    end


