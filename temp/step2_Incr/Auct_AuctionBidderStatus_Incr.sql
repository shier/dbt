{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CommissionPercentage] as varchar), Cast([AutomobiliaCommissionPercentage] as varchar), Cast([AuctionID] as varchar), Cast([BidderStatusID] as varchar), Cast([FeeID] as varchar), Cast([RangeStart] as varchar), Cast([RangeEnd] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_AuctionBidderStatus_InterView]
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
