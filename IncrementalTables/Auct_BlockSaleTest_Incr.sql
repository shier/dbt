{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Price] as varchar), Cast([BuyerCommPerc] as varchar), Cast([BuyerCommDollars] as varchar), Cast([CommPerc] as varchar), Cast([CityTaxRate] as varchar), Cast([CommDollars] as varchar), Cast([StateTaxDollars] as varchar), Cast([StateTaxRate] as varchar), Cast([CountyTaxDollars] as varchar), Cast([CountyTaxRate] as varchar), Cast([CityTaxDollars] as varchar), Cast([BlockSaleTestID] as varchar), Cast([AuctionBidderID] as varchar), Cast([DocketID] as varchar), Cast([SaleStatusID] as varchar), Cast([AuctioneerID] as varchar), [Comments], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([BuyerCommOverride] as varchar), Cast([SellerCommOverride] as varchar), Cast([RunDate] as varchar), Cast([TaxOverride] as varchar), [TaxExemptCode])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_BlockSaleTest_InterView]
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
