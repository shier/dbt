{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([FromDate] as varchar), Cast([RangeMinutes] as varchar), Cast([EntryCount] as varchar), Cast([IsArchived] as varchar), [Severity])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Logstats_InterView]
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
