{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Active] as varchar), Cast([DocumentImageID] as varchar), Cast([CustomerAccountID] as varchar), Cast([DocumentImageTypeID] as varchar), [UncPath], [FullPath], Cast([AuctionID] as varchar), Cast([Expiration] as varchar), Cast([Created] as varchar), Cast([CreatedByUserID] as varchar), Cast([Height] as varchar), Cast([Width] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_DocumentImage_InterView]
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
