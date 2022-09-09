{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), Cast([VehicleTypeID] as varchar), Cast([CountryID] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([IsActive] as varchar), [Make], [Model], [Makeplural], [Modelplural], [Makeslug], [Modelslug], [RelatedModelslugs])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_MakeModelTest_InterView]
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
