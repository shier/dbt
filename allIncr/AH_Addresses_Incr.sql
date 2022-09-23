{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([CreatedOn] as varchar), Cast([UserID] as varchar), Cast([ID] as varchar), Cast([CountryID] as varchar), [Street1], [Street2], [City], [Stateregion], [ZipPostal], [LastUpdatedUser], [Description], [FirstName], [LastName])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_Addresses_InterView]
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
