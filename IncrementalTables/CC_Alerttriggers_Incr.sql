{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), Cast([ListingID] as varchar), Cast([AlerttriggerReasonID] as varchar), Cast([CreateDateUTC] as varchar), Cast([ImmediateDateProcessedUTC] as varchar), Cast([DailyDateProcessedUTC] as varchar), Cast([FraudDateProcessedUTC] as varchar), [Oldvalue], [Newvalue])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_Alerttriggers_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
