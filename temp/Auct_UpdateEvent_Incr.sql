{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([UpdateEventID] as varchar), Cast([UsersID] as varchar), Cast([TableID] as varchar), [OriginalData], Cast([ActionTime] as varchar), Cast([ContactID] as varchar), Cast([AuctionID] as varchar), Cast([AddressTypeID] as varchar), Cast([AddressID] as varchar), [Address1], [Address2], [City], [StateProvince], [PostalCode], Cast([Country] as varchar), [Careof], Cast([DealerID] as varchar), [DealerNumber], [DealerState], [TaxIDNumber], [TaxIDsTage], [DealerComment], Cast([AddressstatID] as varchar), Cast([DealerstatID] as varchar), Cast([DealernumExpire] as varchar), Cast([DeAlerTaxExpire] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_UpdateEvent_InterView]
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
