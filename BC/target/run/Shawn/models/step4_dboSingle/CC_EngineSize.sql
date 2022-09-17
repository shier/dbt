
  
  if object_id ('"dbo"."CC_EngineSize__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EngineSize__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_EngineSize__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_EngineSize__dbt_tmp"
    end


   EXEC('create view dbo.CC_EngineSize__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[CC_EngineSize_FinalView]
    ');

  CREATE TABLE "dbo"."CC_EngineSize__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_EngineSize__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_EngineSize__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EngineSize__dbt_tmp_temp_view"
    end


