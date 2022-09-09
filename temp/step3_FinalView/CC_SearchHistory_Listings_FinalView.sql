{{ config(materialized='view',schema='stg')}}
Select
	[SearchHistoryFK],[ListingFK] 
From [CC_SearchHistory_Listings_Incr] 
Where [dbt_valid_to] is null