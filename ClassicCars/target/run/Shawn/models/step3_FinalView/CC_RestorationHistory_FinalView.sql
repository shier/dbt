create view "stg"."CC_RestorationHistory_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_RestorationHistory_Incr] 
Where [dbt_valid_to] is null
