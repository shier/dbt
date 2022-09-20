
Select
	cast([OID] as nvarchar(4000)) [Oid],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Xml] as nvarchar(4000)) [Xml],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord] 
From stg.[CC_ModelDifferenceAspect_FinalView]