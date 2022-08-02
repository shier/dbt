{{ config(materialized='view',schema='stg')}}
Select
	cast([Roles] as nvarchar(4000)) [Roles],
	[OptimisticLockField] [OptimisticLockField],
	cast([Users] as nvarchar(4000)) [Users],
	cast([OID] as nvarchar(4000)) [OID]
From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_Raw]
