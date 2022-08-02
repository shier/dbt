create view "stg"."CC_EngineSize_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_EngineSize_Incr] 
Where [dbt_valid_to] is null
