{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar), Cast([IsinplaceReport] as varchar), [OID], [OBJectTypeName], [Name], [ParaMetersoBJectTypeName], [PredefinedReportType], Cast([Content] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ReportDatav2_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
