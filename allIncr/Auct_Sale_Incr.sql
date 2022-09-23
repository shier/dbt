{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([CommDollars] as varchar), Cast([StateTaxDollars] as varchar), Cast([StateTaxRate] as varchar), Cast([CountyTaxDollars] as varchar), Cast([CountyTaxRate] as varchar), Cast([CityTaxDollars] as varchar), Cast([HoldWire] as varchar), Cast([CityTaxRate] as varchar), Cast([SteveCommDollars] as varchar), Cast([SteveCommPerc] as varchar), Cast([AsSiterCommDollars] as varchar), Cast([AsSiterCommPerc] as varchar), Cast([Price] as varchar), Cast([BuyerCommPerc] as varchar), Cast([BuyerCommDollars] as varchar), Cast([CommPerc] as varchar), Cast([SaleID] as varchar), Cast([BlockSaleID] as varchar), [ShipDateVerified], Cast([CarrierID] as varchar), [Comments], Cast([BuyerCustomerAccountID] as varchar), Cast([SellerCustomerAccountID] as varchar), Cast([ShiptoAddressID] as varchar), Cast([ShiptoContactID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [BillofLading], [BillofLadingText], [BMA], Cast([Legacy] as varchar), Cast([ShipDate] as varchar), [Navision], Cast([BuyerdealerID] as varchar), Cast([SellerAddressID] as varchar), Cast([SellerDealerID] as varchar), Cast([AlternateSaleType] as varchar), Cast([SaleStatusID] as varchar), Cast([AuctionBidderID] as varchar), [TaxExemptCode], [ArBitrated], [AdjustmentReason], [AdjustedByUserName], Cast([AdjustmentDate] as varchar), [CarrierName])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Sale_InterView]
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
