{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [Allowwrite],
	cast([AllowDelete] as bit) [AllowDelete],
	cast([AllowNavigate] as bit) [AllowNavigate],
	cast([Criteria] as nvarchar(4000)) [Criteria],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord] 
From stg.[CC_SecURItySystemoBJectPermissionsobject_FinalView]