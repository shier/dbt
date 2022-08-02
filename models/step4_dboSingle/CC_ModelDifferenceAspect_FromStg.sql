{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Xml] as nvarchar(4000)) [Xml],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord] 
From stg.[CC_ModelDifferenceAspect_FinalView]