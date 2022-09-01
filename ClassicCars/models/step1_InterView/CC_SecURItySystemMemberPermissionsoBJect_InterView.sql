{{ config(materialized='view',schema='stg')}}
Select
	cast([Oid] as nvarchar(4000)) [OID],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	cast([Members] as nvarchar(4000)) [Members],
	cast([Criteria] as nvarchar(4000)) [Criteria],
	cast([Owner] as nvarchar(4000)) [Owner],
	[AllowRead] [AllowRead],
	[AllowWrite] [Allowwrite]
From stg.[CC_SecURItySystemMemberPermissionsoBJect_Raw]
