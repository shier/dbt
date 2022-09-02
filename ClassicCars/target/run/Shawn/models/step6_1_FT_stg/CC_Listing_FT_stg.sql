
  
  if object_id ('"stg"."CC_Listing_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Listing_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Listing_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.CC_Listing_FT_stg__dbt_tmp_temp_view as
    
SELECT
	[Id] AS [ListingID],
	[CompanyId] AS [CompanyID],
	[ListingSourceFK],
	[CategoryId] AS [CategoryID],
	[ListingStatusID],
	[ProductType],
	[PriceTypeID],
	[Price],
	[City],
	[State],
	[ZipCode] AS [PostalCode],
	[Latitude],
	[Longitude],
	[IsFeaturedListing],
	[FeaturedUntil] AS [FeaturedUntilDate],
	[FeaturedOn] AS [FeaturedOnDate],
	[SalesforceLeadID],
	[SalesforceOpportunityID],
	[LastSalesforceActivityDate],
	[RenewalStatus],
	[RenewalToken],
	[Shuffle_DateExpiresUTC] AS [ShuffleExpiresDateUTC],
	[IsActive],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate]
FROM [stg].[CC_Listing_FinalView]
    ');

  CREATE TABLE "stg"."CC_Listing_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Listing_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Listing_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_FT_stg__dbt_tmp_temp_view"
    end


