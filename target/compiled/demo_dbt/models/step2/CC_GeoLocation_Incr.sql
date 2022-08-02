
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([GeoDataSource] as varchar), Cast([CreateDateUTC] as varchar), Cast([Latitude] as varchar), Cast([Longitude] as varchar), [IpAddress], [CountryCode], [RegionCode], [RegionName], [City], [ZipCode])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_GeoLocation_Inter]
	)
Select * From hashData
