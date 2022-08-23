
  
  if object_id ('"dbo"."Auct_Organization_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Organization_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Organization_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Organization_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Organization_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OrganizationID] as int) [OrganizationID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CompanyID] as int) [CompanyID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([DeptCode] as nvarchar(4000)) [DeptCode] 
From stg.[Auct_Organization_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Organization_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Organization_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Organization_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Organization_FromStg__dbt_tmp_temp_view"
    end


