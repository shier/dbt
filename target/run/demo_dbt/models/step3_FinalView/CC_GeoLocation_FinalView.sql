create view "stg"."CC_GeoLocation_FinalView__dbt_tmp" as
    
Select
	[GeoDataSource],[CreateDateUTC],[Latitude],[Longitude],[IpAddress],[CountryCode],[RegionCode],[RegionName],[City],[ZipCode] 
From [CC_GeoLocation_Incr]
