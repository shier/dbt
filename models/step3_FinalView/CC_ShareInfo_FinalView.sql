{{ config(materialized='view',schema='stg')}}
Select
	[ShareInfoID],[Browser],[Appused],[UserAgent],[UserEmail],[IpAddress],[Latitude],[Longitude],[CreateDateUTC],[UserID],[ListingFK] 
From stg.[CC_ShareInfo_Incr] 
Where [dbt_valid_to] is null