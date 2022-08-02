create view "stg"."CC_SearchHistory_Listings_FinalView__dbt_tmp" as
    
Select
	[SearchHistoryFK],[ListingFK] 
From [CC_SearchHistory_Listings_Incr]
