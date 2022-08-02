create view "stg"."CC_ModuleInfo_InterView__dbt_tmp" as
    
Select
	[ID] [ID],
	[OptimisticLockField] [OptimisticLockField],
	cast([Version] as nvarchar(4000)) [Version],
	cast([Name] as nvarchar(4000)) [Name],
	cast([AssemblyFileName] as nvarchar(4000)) [AssemblyFileName],
	[IsMain] [IsMain]
From stg.[CC_ModuleInfo_Raw]
