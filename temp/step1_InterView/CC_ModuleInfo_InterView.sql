{{ config(materialized='view',schema='stg')}}
Select
	[ID] [ID],
	[OptimisticLockField] [OptimisticLockField],
	cast([Version] as nvarchar(4000)) [Version],
	cast([Name] as nvarchar(4000)) [Name],
	cast([AssemblyFileName] as nvarchar(4000)) [AssemblyFileName],
	[IsMain] [IsMain]
From stg.[CC_ModuleInfo_Raw]
