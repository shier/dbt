
  
  if object_id ('"dbo"."CC_Listing_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Listing_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Listing_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Listing_FT__dbt_tmp"
    end


   EXEC('create view dbo.CC_Listing_FT__dbt_tmp_temp_view as
    

with updateData as (
    select 
		FTstg.[ListingID],
		FTtmp.[Seller_Skey],
		FTstg.[CompanyID],
		FTtmp.[Car_Skey],
		FTstg.[ListingSourceFK],
		FTtmp.[ListingSource_Skey],
		FTstg.[CategoryId],
		FTtmp.[ListingCategory_Skey],
		FTstg.[ListingStatusID],
		FTtmp.[ListingStatus_Skey],
		FTstg.[ProductType],
		FTtmp.[Product_Skey],
		FTstg.[PriceTypeID],
		FTtmp.[PriceType_Skey],
		FTstg.[Price],
		FTstg.[City],
		FTstg.[State],
		FTstg.[PostalCode],
		FTstg.[Latitude],
		FTstg.[Longitude],
		FTstg.[IsFeaturedListing],
		FTstg.[FeaturedUntilDate],
		FTstg.[FeaturedOnDate],
		FTstg.[SalesforceLeadID],
		FTstg.[SalesforceOpportunityID],
		FTstg.[LastSalesforceActivityDate],
		FTstg.[RenewalStatus],
		FTstg.[RenewalToken],
		FTstg.[ShuffleExpiresDateUTC],
		FTstg.[IsActive],
		FTstg.[Created],
		FTstg.[ModifiedDate]
    from stg.CC_Listing_FT_tmp as FTtmp 
    join stg.CC_Listing_FT_stg as FTstg 
    on FTstg.ListingID=FTtmp.ListingID
),
insertData as (
    select 
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
    from stg.CC_Listing_FT_tmp
    where ListingID not in (select  ListingID from stg.CC_Listing_FT_stg)
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
from updateData

union all

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
from insertData
    ');

  CREATE TABLE "dbo"."CC_Listing_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Listing_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Listing_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Listing_FT__dbt_tmp_temp_view"
    end


