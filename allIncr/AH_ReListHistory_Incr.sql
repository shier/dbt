{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([CurrentPrice_Old] as varchar), Cast([CurrentPrice_New] as varchar), Cast([ReservePrice] as varchar), Cast([ID] as varchar), Cast([ListingID] as varchar), Cast([NewreListiteration] as varchar), Cast([Duration_Old] as varchar), Cast([Duration_New] as varchar), Cast([HighBidderID] as varchar), Cast([BidCount] as varchar), Cast([Startdttm_New] as varchar), Cast([Enddttm_Old] as varchar), Cast([Enddttm_New] as varchar), Cast([ReListdttm] as varchar), Cast([Startdttm_Old] as varchar), Cast([MaxBidAmount] as varchar), Cast([ProxyBidAmount] as varchar), Cast([BidIncrement] as varchar), [ListingTitle])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_ReListHistory_InterView]
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
