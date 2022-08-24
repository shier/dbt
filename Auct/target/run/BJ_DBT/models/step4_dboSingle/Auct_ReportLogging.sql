
  
  if object_id ('"dbo"."Auct_ReportLogging__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportLogging__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ReportLogging__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ReportLogging__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ReportLogging__dbt_tmp_temp_view as
    
Select
	cast([ID] as nvarchar(4000)) [ID],
	cast([Created] as datetime) [Created],
	cast([QueryString] as nvarchar(4000)) [QueryString],
	cast([Login] as nvarchar(4000)) [Login] 
From stg.[Auct_ReportLogging_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ReportLogging__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ReportLogging__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ReportLogging__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportLogging__dbt_tmp_temp_view"
    end


