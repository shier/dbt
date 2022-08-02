
Select
	[ID],[Make],[Model],[IsActive],[Year],[VehicleCount],[CreateDate],[ModifyDate] 
From stg.[CC_MakeModelcache_Incr] 
Where [dbt_valid_to] is null