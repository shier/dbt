{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as nvarchar(4000)) [Oid],
	cast([Parent] as nvarchar(4000)) [Parent],
	cast([Name] as nvarchar(4000)) [Name],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord] 
From stg.[CC_HCategory_FinalView]