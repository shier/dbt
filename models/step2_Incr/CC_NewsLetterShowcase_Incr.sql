{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([IsActive] as varchar), Cast([NewsLetterissueFK] as varchar), Cast([ListingFK] as varchar), Cast([ShowcaseSequence] as varchar), Cast([CreateDateUTC] as varchar), Cast([ModifyDateUTC] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_NewsLetterShowcase_InterView]
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
