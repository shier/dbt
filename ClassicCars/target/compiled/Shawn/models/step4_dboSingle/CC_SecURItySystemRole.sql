
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType],
	cast([OID] as nvarchar(4000)) [OID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Isadministrative] as bit) [Isadministrative],
	cast([CaneditModel] as bit) [CaneditModel] 
From stg.[CC_SecURItySystemRole_FinalView]