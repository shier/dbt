create view "stg"."CC_SearchHistory_Listings_InterView__dbt_tmp" as
    
Select
	[SearchHistoryFK] [SearchHistoryFK],
	[ListingFK] [ListingFK]
From stg.[CC_SearchHistory_Listings_Raw]
