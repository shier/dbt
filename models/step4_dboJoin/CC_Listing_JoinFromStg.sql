{{ config(materialized='table',schema='dbo')}}
SELECT
	cast(C_LC.[Description] as nvarchar(50)) [ListingCategory],
	cast(C_LS.[Description] as nvarchar(50)) [ListingSource],
	C_L.[ID],
	C_L.[ListingStatusID],
	C_L.[ReNewalStatus] [RenewalStatus],
	C_L.[ProductType],
	C_L.[CompanyID],
	C_L.[PriceTypeID],
	cast(C_L.[CreateDate] as datetime) [Created],
	cast(C_L.[ModifyDate] as datetime) [ModifiedDate],
	cast(C_L.[FeaturedUntil] as datetime) [FeaturedUntilDate],
	cast(C_L.[FeaturedOn] as datetime) [FeaturedOnDate],
	cast(C_L.[LastSalesForceActivityDate] as datetime) [LastSalesforceActivityDate],
	C_L.[Shuffle_DateExpiresUTC] [ShuffleExpiresDateUTC],
	C_L.[IsActive],
	C_L.[IsFeaturedListing],
	cast(C_L.[City] as nvarchar(100)) [City],
	cast(C_L.[State] as nvarchar(50)) [State],
	cast(C_L.[ZipCode] as nvarchar(50)) [PostalCode],
	cast(C_L.[Latitude] as varchar(128)) [Latitude],
	cast(C_L.[SalesForceLeadID] as nvarchar(50)) [SalesforceLeadID],
	cast(C_L.[SalesForceOpportunityID] as nvarchar(50)) [SalesforceOpportunityID],
	cast(C_L.[ReNewalToken] as uniqueidentifier) [RenewalToken],
	cast(C_L.[Description] as nvarchar(4000)) [Description],
	cast(C_L.[Longitude] as varchar(128)) [Longitude],
	cast(C_L.[Price] as money) [Price],
	cast(C_VT.[Description] as nvarchar(1000)) [CarType]
FROM [stg].[CC_Listing_FinalView] AS C_L 
JOIN [stg].[CC_ListingCategory_FinalView] AS C_LC ON C_LC.[ID]=.[]
JOIN [stg].[CC_ListingSources_FinalView] AS C_LS ON C_LS.[ListingSourcePK]=.[]
JOIN [stg].[CC_VehicleType_FinalView] AS C_VT ON C_VT.[ID]=.[]
