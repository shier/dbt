{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([No], [Name], [Name2], [Address], [Address2], [City], [State], [CountryCode], [PostalCode], [Phoneno], [Email], [HomePage], Cast([Taxliable] as varchar), [FederalIDno], [1099Code], Cast([Status] as varchar), [StatusMessage], Cast([WrotetoNavision] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_NavisionVendorBuffer_InterView]
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
