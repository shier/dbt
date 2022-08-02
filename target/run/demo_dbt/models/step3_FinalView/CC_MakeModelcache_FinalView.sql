create view "stg"."CC_MakeModelcache_FinalView__dbt_tmp" as
    
Select
	[ID],[IsActive],[Make],[Model],[Year],[VehicleCount],[CreateDate],[ModifyDate] 
From stg.[CC_MakeModelcache_Incr] 
Where [dbt_valid_to] is null
