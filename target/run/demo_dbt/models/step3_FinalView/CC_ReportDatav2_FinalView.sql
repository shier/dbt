create view "stg"."CC_ReportDatav2_FinalView__dbt_tmp" as
    
Select
	[OptimisticLockField],[GcRecord],[IsinplaceReport],[OID],[OBJectTypeName],[Name],[ParaMetersoBJectTypeName],[PredefinedReportType],[Content] 
From [CC_ReportDatav2_Incr]
