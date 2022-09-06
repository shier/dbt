{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CommissionPercentage] as varchar), Cast([AutomobiliaCommissionPercentage] as varchar), Cast([AuctionID] as varchar), Cast([BidderStatusID] as varchar), Cast([FeeID] as varchar), Cast([RangeStart] as varchar), Cast([RangeEnd] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
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
