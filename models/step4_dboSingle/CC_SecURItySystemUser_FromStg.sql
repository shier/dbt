{{ config(materialized='table',schema='dbo')}}
Select
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([ChangePasswordonFirstLogon] as bit) [ChangePasswordonFirstLogon],
	cast([IsActive] as bit) [IsActive],
	cast([OID] as nvarchar(4000)) [OID],
	cast([StoredPassword] as nvarchar(4000)) [StoredPassword],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType] 
From stg.[CC_SecURItySystemUser_FinalView]