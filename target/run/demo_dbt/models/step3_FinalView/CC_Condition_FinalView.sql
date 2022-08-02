create view "stg"."CC_Condition_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_Condition_Incr] 
Where [dbt_valid_to] is null
