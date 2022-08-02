{{ config(materialized='view',schema='stg')}}
Select
	cast([Oid] as nvarchar(4000)) [OID],
	cast([Parent] as nvarchar(4000)) [Parent],
	cast([Name] as nvarchar(4000)) [Name],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord]
From stg.[CC_HCategory_Raw]
