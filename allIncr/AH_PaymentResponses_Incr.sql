{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([Approved] as varchar), Cast([ID] as varchar), Cast([InvoiceID] as varchar), Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([DaTestamp] as varchar), Cast([Amount] as varchar), [AuthorizationCode], [AvsResponseCode], [Cvv2ResponseCode], [CavResponseCode], [BuyerStreet], [BuyerCity], [ResponseStatus], [ProvIDEr], [RawResponseCode], [Description], [TransactionID], [Method], [BuyerStateregion], [BuyerzipPostal], [BuyerEmail], [AllFields], [LastUpdatedUser])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_PaymentResponses_InterView]
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
