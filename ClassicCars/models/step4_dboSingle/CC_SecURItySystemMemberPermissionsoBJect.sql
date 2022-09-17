{{ config(materialized='table',schema='dbo')}}
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([Members] as nvarchar(4000)) [Members],
	cast([Criteria] as nvarchar(4000)) [Criteria],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [AllowWrite] 
From stg.[CC_SecURItySystemMemberPermissionsoBJect_FinalView]