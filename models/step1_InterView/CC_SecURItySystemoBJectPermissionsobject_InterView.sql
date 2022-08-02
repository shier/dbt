{{ config(materialized='view',schema='stg')}}
Select
	cast([Oid] as nvarchar(4000)) [OID],
	[AllowRead] [AllowRead],
	[AllowWrite] [Allowwrite],
	[AllowDelete] [AllowDelete],
	[AllowNavigate] [AllowNavigate],
	cast([Criteria] as nvarchar(4000)) [Criteria],
	cast([Owner] as nvarchar(4000)) [Owner],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord]
From stg.[CC_SecURItySystemoBJectPermissionsobject_Raw]
