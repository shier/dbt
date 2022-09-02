create view "stg"."CC_AlertModes_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_AlertModes_Incr] 
Where [dbt_valid_to] is null
