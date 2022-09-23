{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([SaleID] as varchar), Cast([BlockSaleID] as varchar), [ShipDateVerified], Cast([CarrierID] as varchar), [Comments], Cast([BuyerCustomerAccountID] as varchar), Cast([SellerCustomerAccountID] as varchar), Cast([ShiptoAddressID] as varchar), Cast([ShiptoContactID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [BillofLading], [BillofLadingText], [BMA], Cast([Legacy] as varchar), Cast([ShipDate] as varchar), [Navision], Cast([BuyerdealerID] as varchar), Cast([SellerAddressID] as varchar), Cast([SellerDealerID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SaleHistory_InterView]
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
