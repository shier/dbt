{{ config(materialized='table',schema='dbo')}}
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OBJectType] as int) [ObjectType],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([TargetType] as nvarchar(4000)) [TargetType],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [AllowWrite],
	cast([AllowCreate] as bit) [AllowCreate],
	cast([AllowDelete] as bit) [AllowDelete],
	cast([AllowNavigate] as bit) [AllowNavigate] 
From stg.[CC_SecURItySystemTypePermissionsoBJect_FinalView]