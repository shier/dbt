{{ config(materialized='view',schema='stg')}}
Select
	[ListingID],[ImportID],[ImportSource],[ImportDate],[Views] 
From stg.[CC_ListingTrackLegacy_Incr] 
Where [dbt_valid_to] is null