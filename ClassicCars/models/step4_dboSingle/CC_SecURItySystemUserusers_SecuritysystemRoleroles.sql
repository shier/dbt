{{ config(materialized='table',schema='dbo')}}
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([Roles] as nvarchar(4000)) [Roles],
	cast([Users] as nvarchar(4000)) [Users],
	cast([OID] as nvarchar(4000)) [OID] 
From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_FinalView]