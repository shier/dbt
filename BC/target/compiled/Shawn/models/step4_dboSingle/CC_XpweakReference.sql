
Select
	cast([OID] as nvarchar(4000)) [Oid],
	cast([TargetKey] as nvarchar(4000)) [TargetKey],
	cast([TargetType] as int) [TargetType],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OBJectType] as int) [ObjectType] 
From stg.[CC_XpweakReference_FinalView]