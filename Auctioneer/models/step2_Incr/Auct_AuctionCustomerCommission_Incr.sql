{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([SellerComission] as varchar), Cast([BuyerComission] as varchar), Cast([MinSellerCharge] as varchar), Cast([MinBuyerCharge] as varchar), Cast([AuctionID] as varchar), Cast([CustomerAccountID] as varchar), Cast([ItemTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionCustomerCommission_InterView]
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
