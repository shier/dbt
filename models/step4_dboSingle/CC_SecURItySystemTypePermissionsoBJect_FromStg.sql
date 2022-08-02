{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType],
	cast([TargetType] as nvarchar(4000)) [TargetType],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [Allowwrite],
	cast([AllowCreate] as bit) [AllowCreate],
	cast([AllowDelete] as bit) [AllowDelete],
	cast([AllowNavigate] as bit) [AllowNavigate] 
From stg.[CC_SecURItySystemTypePermissionsoBJect_FinalView]