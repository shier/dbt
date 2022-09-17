{{ config(materialized='table',schema='dbo')}}
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([IsinplaceReport] as bit) [IsInplaceReport],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([OBJectTypeName] as nvarchar(4000)) [ObjectTypeName],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParaMetersoBJectTypeName] as nvarchar(4000)) [ParametersObjectTypeName],
	cast([PredefinedReportType] as nvarchar(4000)) [PredefinedReportType],
	cast([Content] as varbinary(8000)) [Content] 
From stg.[CC_ReportDatav2_FinalView]