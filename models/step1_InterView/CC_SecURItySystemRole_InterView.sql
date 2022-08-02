{{ config(materialized='view',schema='stg')}}
Select
	cast([Oid] as nvarchar(4000)) [OID],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ObjectType] [OBJectType],
	cast([Name] as nvarchar(4000)) [Name],
	[IsAdministrative] [Isadministrative],
	[CanEditModel] [CaneditModel]
From stg.[CC_SecURItySystemRole_Raw]
