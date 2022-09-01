
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar), Cast([IsinplaceReport] as varchar), [OID], [OBJectTypeName], [Name], [ParaMetersoBJectTypeName], [PredefinedReportType], Cast([Content] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ReportDatav2_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."CC_ReportDatav2_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
