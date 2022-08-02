create view "stg"."CC_DistanceUnit_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_DistanceUnit_Incr] 
Where [dbt_valid_to] is null
