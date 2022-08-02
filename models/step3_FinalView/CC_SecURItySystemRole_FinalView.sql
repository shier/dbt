{{ config(materialized='view',schema='stg')}}
Select
	[OID],[OptimisticLockField],[GcRecord],[OBJectType],[Name],[Isadministrative],[CaneditModel] 
From stg.[CC_SecURItySystemRole_Incr] 
Where [dbt_valid_to] is null