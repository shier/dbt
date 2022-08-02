{{ config(materialized='table',schema='dbo')}}
Select
	cast([SearchHistoryFK] as int) [SearchHistoryFK],
	cast([ListingFK] as int) [ListingFK] 
From stg.[CC_SearchHistory_Listings_FinalView]