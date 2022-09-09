{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([CredentialDisbursementID] as varchar), Cast([DisbursedFromContactID] as varchar), [CredentialSequenceNumber], Cast([DisbursedByUserID] as varchar), [DisbursedByUserName], Cast([DisbursementDate] as varchar), Cast([CredentialTypeID] as varchar), [CredentialTypeName], Cast([PulseEventID] as varchar), Cast([AuctionID] as varchar), Cast([PulseOrderID] as varchar), [DisbursedtoName])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_CredentialDisbursement_InterView]
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
