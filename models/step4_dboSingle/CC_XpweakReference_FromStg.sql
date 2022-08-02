{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([TargetKey] as nvarchar(4000)) [TargetKey],
	cast([TargetType] as int) [TargetType],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType] 
From stg.[CC_XpweakReference_FinalView]