{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([City], [State], [ZipCode], [Make], [Model], [Description], [CompanyName], [SrcsetandFirstURL], [Country], [StockNumber], Cast([ID] as varchar), Cast([ListingStatusID] as varchar), Cast([CompanyID] as varchar), Cast([Year] as varchar), Cast([PriceTypeID] as varchar), Cast([VehicleTypeID] as varchar), Cast([CompanyTypeID] as varchar), Cast([ImageCount] as varchar), Cast([VideoCount] as varchar), Cast([CategoryID] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([FeaturedUntil] as varchar), Cast([FeaturedOn] as varchar), Cast([IsActive] as varchar), Cast([IsFeaturedListing] as varchar), Cast([Convertible] as varchar), Cast([Price] as varchar), Cast([Latitude] as varchar), Cast([Longitude] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_ListingReadOnly_InterView]
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
