{{ config(materialized='table',schema='stg')}}
WITH CC_Listing_CTE AS (
    SELECT 
        listing.[ListingID], 
        seller.[Seller_Skey], 
        listing.[CompanyID], 
        carinfo.[Car_Skey], 
        listing.[ListingSourceFK],
        listingsrc.[ListingSource_Skey], 
        listing.[CategoryId],
        listingcat.[ListingCategory_Skey], 
        listing.[ListingStatusID], 
        listingsts.[ListingStatus_Skey], 
        listing.[ProductType], 
        product.[Product_Skey], 
        -- product.[Description],
        -- product.[Price] AS [ProductTypePrice], 
        listing.[PriceTypeID], 
        pricety.[PriceType_Skey], 
        listing.[Price],
        listing.[City], 
        listing.[State], 
        listing.[PostalCode], 
        listing.[Latitude], 
        listing.[Longitude], 
        listing.[IsFeaturedListing], 
        listing.[FeaturedUntilDate], 
        listing.[FeaturedOnDate], 
        listing.[SalesforceLeadID], 
        listing.[SalesforceOpportunityID], 
        listing.[LastSalesforceActivityDate], 
        listing.[RenewalStatus], 
        listing.[RenewalToken],
        listing.[ShuffleExpiresDateUTC],
        listing.[IsActive], 
        listing.[Created], 
        listing.[ModifiedDate]
    FROM [stg].[CC_Listing_FT_stg] AS listing 
    -- FOR [Car_Skey]
    LEFT JOIN [dbo].[CC_CarInfo_DM] AS carinfo 
        ON listing.[ListingID]=carinfo.[Car_Skey]
    -- FOR [ListingSource_Skey]
    LEFT JOIN [dbo].[CC_ListingSources_DM] AS listingsrc
        ON listing.[ListingSourceFK]=listingsrc.[ListingSource_Skey]
    -- FOR [ListingCategory_Skey]
    LEFT JOIN [dbo].[CC_ListingCategory_DM] AS listingcat
        ON listing.[CategoryId]=listingcat.[ListingCategory_Skey]
    -- FOR [ListingStatus_Skey]
    LEFT JOIN [dbo].[CC_ListingStatus_DM] AS listingsts 
        ON listing.[ListingStatusID]=listingsts.[listingStatus_Skey]
    -- FOR [ProductType_Skey]
    LEFT JOIN [dbo].[CC_Product_DM] AS product 
        ON listing.[ProductType]=product.[Product_Skey]
    -- FOR [PriceType_Skey]
    LEFT JOIN [dbo].[CC_PriceType_DM] AS pricety
        ON listing.[PriceTypeID]=pricety.[PriceType_Skey]
    -- FOR [Seller_Skey]
    LEFT JOIN [dbo].[CC_Seller_DM] AS seller 
        ON listing.[CompanyID]=seller.[Seller_Skey]

    -- -- FOR [Customer_Skey]
    -- LEFT JOIN [dbo].[CC_Customer_Archive_DM] cxarchive
    --     ON listing.[CompanyID]=cxarchive.[CompanyID]
    --         AND listing.[City]=listing.[City]
    --         AND listing.[State]=listing.[State]
    --         AND listing.[PostalCode]=cxarchive.[PostalCode]
    --         AND listing.[Latitude]=cxarchive.[Latitude]
    --         AND listing.[Longitude]=cxarchive.[Longitude]
)
SELECT
    [ListingID], 
    [Seller_Skey], 
    [CompanyID], 
    [Car_Skey], 
    [ListingSourceFK], 
    [ListingSource_Skey], 
    [CategoryId],  
    [ListingCategory_Skey], 
    [ListingStatusID], 
    [ListingStatus_Skey], 
    [ProductType], 
    [Product_Skey], 
    [PriceTypeID], 
    [PriceType_Skey], 
    [Price], 
	[City], 
	[State], 
	[PostalCode], 
	[Latitude], 
	[Longitude], 
	[IsFeaturedListing], 
	[FeaturedUntilDate], 
	[FeaturedOnDate], 
	[SalesforceLeadID], 
	[SalesforceOpportunityID], 
	[LastSalesforceActivityDate], 
	[RenewalStatus], 
	[RenewalToken], 
	[ShuffleExpiresDateUTC], 
    [IsActive], 
    [Created], 
	[ModifiedDate]
FROM CC_Listing_CTE