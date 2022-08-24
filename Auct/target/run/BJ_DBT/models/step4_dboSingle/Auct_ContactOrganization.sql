
  
  if object_id ('"dbo"."Auct_ContactOrganization__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactOrganization__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContactOrganization__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContactOrganization__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContactOrganization__dbt_tmp_temp_view as
    
Select
	cast([ContactOrganizationID] as int) [ContactOrganizationID],
	cast([OrganizationID] as int) [OrganizationID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactOrganization_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContactOrganization__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContactOrganization__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContactOrganization__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactOrganization__dbt_tmp_temp_view"
    end


