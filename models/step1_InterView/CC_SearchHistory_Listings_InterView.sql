{{ config(materialized='view',schema='stg')}}
Select
	[SearchHistoryFK] [SearchHistoryFK],
	[ListingFK] [ListingFK]
From stg.[CC_SearchHistory_Listings_Raw]
