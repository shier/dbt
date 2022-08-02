create view "stg"."CC_EngineHistory_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_EngineHistory_Incr] 
Where [dbt_valid_to] is null
