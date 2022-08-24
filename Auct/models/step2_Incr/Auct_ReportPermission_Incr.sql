{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReportID] as varchar), [Permission])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportPermission_InterView]
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
