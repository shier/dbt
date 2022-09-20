
  
  if object_id ('"dbo"."Auct_ReportRestricted__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportRestricted__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ReportRestricted__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ReportRestricted__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ReportRestricted__dbt_tmp_temp_view as
    
Select
	cast([ReportID] as int) [REPORTID],
	cast([UserID] as int) [USERID] 
From stg.[Auct_ReportRestricted_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ReportRestricted__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ReportRestricted__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ReportRestricted__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportRestricted__dbt_tmp_temp_view"
    end

