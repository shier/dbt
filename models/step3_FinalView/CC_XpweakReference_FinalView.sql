{{ config(materialized='view',schema='stg')}}
Select
	[OID],[TargetKey],[TargetType],[OptimisticLockField],[GcRecord],[OBJectType] 
From stg.[CC_XpweakReference_Incr] 
Where [dbt_valid_to] is null