
Select
	IsInplaceReport IsinplaceReport,
	cast(Content as nvarchar(4000)) Content,
	GCRecord GcRecord,
	OptimisticLockField OptimisticLockField,
	cast(PredefinedReportType as nvarchar(4000)) PredefinedReportType,
	cast(Oid as nvarchar(4000)) OID,
	cast(ObjectTypeName as nvarchar(4000)) OBJectTypeName,
	cast(Name as nvarchar(4000)) Name,
	cast(ParametersObjectTypeName as nvarchar(4000)) ParaMetersoBJectTypeName
From CC_ReportDatav2_Raw