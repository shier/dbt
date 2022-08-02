{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([GeoDataSource] as varchar), Cast([CreateDateUTC] as varchar), Cast([Latitude] as varchar), Cast([Longitude] as varchar), [IpAddress], [CountryCode], [RegionCode], [RegionName], [City], [ZipCode])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_GeoLocation_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
