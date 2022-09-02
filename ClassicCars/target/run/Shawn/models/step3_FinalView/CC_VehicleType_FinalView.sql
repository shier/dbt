create view "stg"."CC_VehicleType_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_VehicleType_Incr] 
Where [dbt_valid_to] is null
