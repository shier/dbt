
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OBJectType] as int) [ObjectType],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Isadministrative] as bit) [IsAdministrative],
	cast([CaneditModel] as bit) [CanEditModel] 
From stg.[CC_SecURItySystemRole_FinalView]