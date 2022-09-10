{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([BidderNumber] as varchar), Cast([BidLimit] as varchar), Cast([BidderID] as varchar), Cast([BidderTypeID] as varchar), Cast([BidderStatusID] as varchar), Cast([CustomerAccountID] as varchar), Cast([AnniversaryDate] as varchar), Cast([ApprovedBy] as varchar), [Comments], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([PaymentMethodID] as varchar), Cast([AddressID] as varchar), Cast([ShippingAddressID] as varchar), Cast([ContactPhoneID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Bidder_InterView]
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
