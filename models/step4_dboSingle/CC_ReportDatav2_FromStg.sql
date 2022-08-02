{{ config(materialized='table',schema='dbo')}}
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([IsinplaceReport] as bit) [IsinplaceReport],
	cast([OID] as nvarchar(4000)) [OID],
	cast([OBJectTypeName] as nvarchar(4000)) [OBJectTypeName],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParaMetersoBJectTypeName] as nvarchar(4000)) [ParaMetersoBJectTypeName],
	cast([PredefinedReportType] as nvarchar(4000)) [PredefinedReportType],
	cast([Content] as varbinary(8000)) [Content] 
From stg.[CC_ReportDatav2_FinalView]