
Select
	cast(ZipCode as nvarchar(4000)) ZipCode,
	cast(IPAddress as nvarchar(4000)) IpAddress,
	cast(CountryCode as nvarchar(4000)) CountryCode,
	cast(RegionCode as nvarchar(4000)) RegionCode,
	cast(RegionName as nvarchar(4000)) RegionName,
	cast(City as nvarchar(4000)) City,
	Latitude Latitude,
	Longitude Longitude,
	CreateDateUTC CreateDateUTC,
	GeoDataSource GeoDataSource
From CC_GeoLocation_Raw