{{ config(materialized='view',schema='stg')}}
Select
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[IsInplaceReport] [IsinplaceReport],
	cast([Oid] as nvarchar(4000)) [OID],
	cast([ObjectTypeName] as nvarchar(4000)) [OBJectTypeName],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParametersObjectTypeName] as nvarchar(4000)) [ParaMetersoBJectTypeName],
	cast([PredefinedReportType] as nvarchar(4000)) [PredefinedReportType],
	cast([Content] as nvarchar(4000)) [Content]
From stg.[CC_ReportDatav2_Raw]
