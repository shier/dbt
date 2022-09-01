{{ config(materialized='view',schema='stg')}}
Select
	cast([Oid] as nvarchar(4000)) [OID],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ObjectType] [OBJectType],
	cast([TargetType] as nvarchar(4000)) [TargetType],
	cast([Owner] as nvarchar(4000)) [Owner],
	[AllowRead] [AllowRead],
	[AllowWrite] [Allowwrite],
	[AllowCreate] [AllowCreate],
	[AllowDelete] [AllowDelete],
	[AllowNavigate] [AllowNavigate]
From stg.[CC_SecURItySystemTypePermissionsoBJect_Raw]
