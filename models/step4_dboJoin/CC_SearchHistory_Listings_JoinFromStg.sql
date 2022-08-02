{{ config(materialized='table',schema='dbo')}}
SELECT
	C_SHL.[SearchHistoryFK],
	C_SHL.[ListingFK],
	C_SH.[UserFK] [SearchHistoryUserID]
FROM [stg].[CC_SearchHistory_Listings_FinalView] AS C_SHL 
JOIN [stg].[CC_SearchHistory_FinalView] AS C_SH ON C_SH.[SearchHistoryPK]=C_SHL.[SearchHistoryFK]

