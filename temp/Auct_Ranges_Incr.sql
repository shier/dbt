{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([RangeID] as varchar), [RangeName], Cast([ContactTypeID] as varchar), Cast([AuctionID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([ProjectedTime] as varchar), Cast([IsReserveLotFee] as varchar), Cast([RangeStart] as varchar), Cast([RangeEnd] as varchar), Cast([RangeNumber] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Ranges_InterView]
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
