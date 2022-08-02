{{ config(materialized='table',schema='dbo')}}
Select
	cast([GeoDataSource] as int) [GeoDataSource],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([RegionCode] as nvarchar(4000)) [RegionCode],
	cast([RegionName] as nvarchar(4000)) [RegionName],
	cast([City] as nvarchar(4000)) [City],
	cast([ZipCode] as nvarchar(4000)) [ZipCode] 
From stg.[CC_GeoLocation_FinalView]