create view "stg"."CC_SecURItySystemRole_InterView__dbt_tmp" as
    
Select
	cast([Oid] as nvarchar(4000)) [OID],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ObjectType] [OBJectType],
	cast([Name] as nvarchar(4000)) [Name],
	[IsAdministrative] [Isadministrative],
	[CanEditModel] [CaneditModel]
From stg.[CC_SecURItySystemRole_Raw]
