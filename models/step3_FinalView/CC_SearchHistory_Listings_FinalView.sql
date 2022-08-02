{{ config(materialized='view',schema='stg')}}
Select
	[SearchHistoryFK],[ListingFK] 
From [CC_SearchHistory_Listings_Incr]