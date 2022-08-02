{{ config(materialized='view',schema='stg')}}
Select
	[GeoDataSource] [GeoDataSource],
	[CreateDateUTC] [CreateDateUTC],
	[Latitude] [Latitude],
	[Longitude] [Longitude],
	cast([IPAddress] as nvarchar(4000)) [IpAddress],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([RegionCode] as nvarchar(4000)) [RegionCode],
	cast([RegionName] as nvarchar(4000)) [RegionName],
	cast([City] as nvarchar(4000)) [City],
	cast([ZipCode] as nvarchar(4000)) [ZipCode]
From stg.[CC_GeoLocation_Raw]
