{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([MinimumDepositValue] as varchar), Cast([PaymentMethodID] as varchar), [Name], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [BidDisplay], [VendorDisplay], [ConsignDisplay], [MediaDisplay], [SponsorDisplay], [BidderDisplay], [LotDisplay], Cast([ProcessorID] as varchar), [WebDisplayName], [WebDescription], Cast([WebDisplayBit] as varchar), [BCPaymentCode])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_PaymentMethod_InterView]
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
