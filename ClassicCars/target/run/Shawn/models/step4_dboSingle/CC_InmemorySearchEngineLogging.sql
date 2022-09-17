
  
  if object_id ('"dbo"."CC_InmemorySearchEngineLogging__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_InmemorySearchEngineLogging__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_InmemorySearchEngineLogging__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_InmemorySearchEngineLogging__dbt_tmp"
    end


   EXEC('create view dbo.CC_InmemorySearchEngineLogging__dbt_tmp_temp_view as
    
Select
	cast([ServerName] as nvarchar(4000)) [ServerName],
	cast([Message] as nvarchar(4000)) [Message],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([LogPK] as int) [LogPK],
	cast([ThReadID] as int) [ThReadID] 
From stg.[CC_InmemorySearchEngineLogging_FinalView]
    ');

  CREATE TABLE "dbo"."CC_InmemorySearchEngineLogging__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_InmemorySearchEngineLogging__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_InmemorySearchEngineLogging__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_InmemorySearchEngineLogging__dbt_tmp_temp_view"
    end


