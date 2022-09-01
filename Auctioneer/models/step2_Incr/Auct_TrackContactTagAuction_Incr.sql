{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([TagID], Cast([ContactID] as varchar), Cast([PulseEventID] as varchar), Cast([CredentialTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TrackContactTagAuction_InterView]
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
