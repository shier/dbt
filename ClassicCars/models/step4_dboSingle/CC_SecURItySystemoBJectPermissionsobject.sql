{{ config(materialized='table',schema='dbo')}}
Select
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [AllowWrite],
	cast([AllowDelete] as bit) [AllowDelete],
	cast([AllowNavigate] as bit) [AllowNavigate],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([Criteria] as nvarchar(4000)) [Criteria],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord] 
From stg.[CC_SecURItySystemoBJectPermissionsobject_FinalView]