{{ config(materialized='view',schema='stg')}}
Select
	[GeoDataSource],[CreateDateUTC],[Latitude],[Longitude],[IpAddress],[CountryCode],[RegionCode],[RegionName],[City],[ZipCode] 
From [CC_GeoLocation_Incr] 
Where [dbt_valid_to] is null