
  
  if object_id ('"dbo"."CC_EngineCondition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EngineCondition_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_EngineCondition_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_EngineCondition_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_EngineCondition_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[CC_EngineCondition_FinalView]
    ');

  CREATE TABLE "dbo"."CC_EngineCondition_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_EngineCondition_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_EngineCondition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EngineCondition_FromStg__dbt_tmp_temp_view"
    end


