{{ config(materialized='table',schema='dbo')}}
Select
	cast([Version] as int) [Version],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OID] as nvarchar(4000)) [OID],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([ConTextID] as nvarchar(4000)) [ConTextID] 
From stg.[CC_ModelDifference_FinalView]