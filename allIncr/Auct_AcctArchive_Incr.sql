{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([PaymentAMT] as varchar), Cast([LotNumber] as varchar), Cast([FeeAmount] as varchar), Cast([ArchiveID] as varchar), Cast([ContactID] as varchar), Cast([AuctionID] as varchar), [AcctType], [FeeName], [PaymentType], [SystemNote], [UserNote], Cast([Created] as varchar), [UserName], [Dept], Cast([DocumentType] as varchar), [VContactID])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_AcctArchive_InterView]
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
