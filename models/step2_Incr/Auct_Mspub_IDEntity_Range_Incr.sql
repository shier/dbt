{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OBJID] as varchar), Cast([ThresHold] as varchar), Cast([Range] as varchar), Cast([Pub_Range] as varchar), Cast([Current_Pub_Range] as varchar), Cast([Last_Seed] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Mspub_IDEntity_Range_InterView]
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
