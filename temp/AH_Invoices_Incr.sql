{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Paiddttm] as varchar), Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([Createddttm] as varchar), Cast([Fulfilleddttm] as varchar), Cast([PropertybagID] as varchar), Cast([ID] as varchar), Cast([ShippingOptionID] as varchar), Cast([PayerID] as varchar), Cast([OwnerID] as varchar), Cast([AuctionEventID] as varchar), Cast([SalesTax] as varchar), Cast([BuyersPremiumPercent] as varchar), Cast([BuyersPremiumAmount] as varchar), Cast([ShippingAmount] as varchar), Cast([SubTotal] as varchar), Cast([Total] as varchar), Cast([IsPayerLocked] as varchar), Cast([Shipped] as varchar), Cast([IsArchived] as varchar), [Status], [ShippingLastName], [BillingLastName], [OwnerName], [Shippingdetails], [OwnerCity], [OwnerStateregion], [OwnerzipPostal], [OwnerCountry], [ShippingFirstName], [BillingFirstName], [BillingCity], [BillingStateregion], [BillingzipPostal], [BillingCountry], [OwnerStreet1], [OwnerStreet2], [ShippingCity], [ShippingStateregion], [ShippingzipPostal], [ShippingCountry], [BillingStreet1], [BillingStreet2], [Comments], [LastUpdatedUser], [Currency], [Type], [ShippingStreet1], [ShippingStreet2])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_Invoices_InterView]
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
