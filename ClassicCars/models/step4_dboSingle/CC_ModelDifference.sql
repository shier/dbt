{{ config(materialized='table',schema='dbo')}}
Select
	cast([Version] as int) [Version],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([UserID] as nvarchar(4000)) [UserId],
	cast([ConTextID] as nvarchar(4000)) [ContextId] 
From stg.[CC_ModelDifference_FinalView]