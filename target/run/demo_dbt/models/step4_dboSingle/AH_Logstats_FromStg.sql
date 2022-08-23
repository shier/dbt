
  
  if object_id ('"dbo"."AH_Logstats_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Logstats_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Logstats_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Logstats_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Logstats_FromStg__dbt_tmp_temp_view as
    
Select
	cast([FromDate] as datetime) [FromDate],
	cast([RangeMinutes] as int) [RangeMinutes],
	cast([EntryCount] as int) [EntryCount],
	cast([IsArchived] as bit) [IsArchived],
	cast([Severity] as nvarchar(4000)) [Severity] 
From stg.[AH_Logstats_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Logstats_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Logstats_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Logstats_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Logstats_FromStg__dbt_tmp_temp_view"
    end


