{{ config(materialized='view',schema='stg')}}
Select
	cast([UserName] as nvarchar(4000)) [UserName],
	[ChangePasswordOnFirstLogon] [ChangePasswordonFirstLogon],
	[IsActive] [IsActive],
	cast([Oid] as nvarchar(4000)) [OID],
	cast([StoredPassword] as nvarchar(4000)) [StoredPassword],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ObjectType] [OBJectType]
From stg.[CC_SecURItySystemUser_Raw]
