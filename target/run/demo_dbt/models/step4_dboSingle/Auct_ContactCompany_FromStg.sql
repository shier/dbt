
  
  if object_id ('"dbo"."Auct_ContactCompany_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactCompany_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContactCompany_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContactCompany_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContactCompany_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ContactCompanyID] as int) [ContactCompanyID],
	cast([CompanyContactTypeID] as int) [CompanyContactTypeID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([CompanyID] as int) [CompanyID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([DealerID] as int) [DealerID] 
From stg.[Auct_ContactCompany_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContactCompany_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContactCompany_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContactCompany_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactCompany_FromStg__dbt_tmp_temp_view"
    end


