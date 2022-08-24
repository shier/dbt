
  
  if object_id ('"dbo"."Auct_ReportUser__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportUser__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ReportUser__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ReportUser__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ReportUser__dbt_tmp_temp_view as
    
Select
	cast([ReportID] as int) [ReportID],
	cast([UserID] as int) [UserID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Category] as nvarchar(4000)) [Category],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_ReportUser_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ReportUser__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ReportUser__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ReportUser__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportUser__dbt_tmp_temp_view"
    end


