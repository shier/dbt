create view "stg"."CC_EngineCondition_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_EngineCondition_Incr] 
Where [dbt_valid_to] is null
