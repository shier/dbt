{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([Version] as nvarchar(4000)) [Version],
	cast([Name] as nvarchar(4000)) [Name],
	cast([AssemblyFileName] as nvarchar(4000)) [AssemblyFileName],
	cast([IsMain] as bit) [IsMain] 
From stg.[CC_ModuleInfo_FinalView]