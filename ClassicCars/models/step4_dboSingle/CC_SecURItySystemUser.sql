{{ config(materialized='table',schema='dbo')}}
Select
	cast([ChangePasswordonFirstLogon] as bit) [ChangePasswordOnFirstLogon],
	cast([IsActive] as bit) [IsActive],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([StoredPassword] as nvarchar(4000)) [StoredPassword],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OBJectType] as int) [ObjectType] 
From stg.[CC_SecURItySystemUser_FinalView]