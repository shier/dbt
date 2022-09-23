{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([ID] as varchar), Cast([UserID] as varchar), Cast([YearFrom] as varchar), Cast([Yearto] as varchar), Cast([Distance] as varchar), Cast([VehicleTypeID] as varchar), Cast([AlertModeID] as varchar), Cast([AlertFrequencyID] as varchar), Cast([IsActive] as varchar), Cast([IncludePrivate] as varchar), Cast([IncludeDealer] as varchar), Cast([IncludeAuction] as varchar), Cast([Priceto] as varchar), [SearchDescription], [SavedSearchName], [Make], [Model], [Country], [State], [ZipCode], Cast([PriceFrom] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_SavedSearches_InterView]
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
