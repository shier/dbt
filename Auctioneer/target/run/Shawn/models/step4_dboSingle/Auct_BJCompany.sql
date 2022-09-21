
  
  if object_id ('"dbo"."Auct_BJCompany__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BJCompany__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BJCompany__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BJCompany__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BJCompany__dbt_tmp_temp_view as
    
Select
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_BJCompany_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BJCompany__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BJCompany__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BJCompany__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BJCompany__dbt_tmp_temp_view"
    end


