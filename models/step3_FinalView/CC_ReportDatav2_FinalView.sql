{{ config(materialized='view',schema='stg')}}
Select
	[OptimisticLockField],[GcRecord],[IsinplaceReport],[OID],[OBJectTypeName],[Name],[ParaMetersoBJectTypeName],[PredefinedReportType],[Content] 
From [CC_ReportDatav2_Incr]