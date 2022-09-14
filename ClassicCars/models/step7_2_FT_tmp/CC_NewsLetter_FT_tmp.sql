{{ config(materialized='table',schema='stg')}}
WITH CC_ListingTrack_CTE AS (
    SELECT 
    	listingtrack.[ListingTrackID], 
        listingtrack.[Created], 
        listingtrack.[ModifiedDate], 
        listingtrack.[IsActive], 
        listingtrack.[ListingID], 
        listing.[Car_Skey],  
        -- cxarchive.[UserID], 
        listingtrack.[Customer_Skey], 
        listingtrack.[ReferringPage], 
        listingtrack.[DataToken], 
        listingtrack.[UserAgent] 
    FROM [dbo].[CC_ListingTrack_FT_stg] listingtrack 
    -- FOR [Car_Skey]
    LEFT JOIN [dbo].[CC_Listing_FT_stg] listing 
        ON listingtrack.[ListingID]=listing.[ListingID]
    -- FOR [Customer_Skey]
    LEFT JOIN [dbo].[CC_Customer_Company_Level_Archive] cxarchive
        ON listingtrack.[UserID]=cxarchive.[UserID]
)
SELECT
	[ListingTrackID], 
	[Created], 
	[ModifiedDate], 
	[IsActive], 
	[ListingID], 
	[Car_Skey],  
	-- [UserID], 
	[Customer_Skey], 
	[ReferringPage], 
	[DataToken], 
	[UserAgent] 
FROM CC_ListingTrack_CTE