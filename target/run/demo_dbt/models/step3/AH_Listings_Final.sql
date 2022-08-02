
  
  if object_id ('"stg"."AH_Listings_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listings_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Listings_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Listings_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_Listings_Final__dbt_tmp_temp_view as
    
Select
	[ID],[LastUpdatedUser],[PrimaryImageURI],[OwnerUserName],[CurrentListingActionUserName],[Title],[Description],[SubTitle],[Location],[Status],[CreatedOn],[UpdatedOn],[DeletedOn],[Enddttm],[Startdttm],[AutoreListrEMAining],[CurrentQuantity],[OriginalQuantity],[ReListiteration],[LotID],[AcceptedActionCount],[OwnerID],[ListingTypeID],[Duration],[Version],[CurrencyID],[PrimaryCategoryID],[CurrentListingActionID],[OfferCount],[OriginalreListCount],[Hits],[CurrentPrice],[Increment],[OriginalPrice] 
From stg.[AH_Listings_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_Listings_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Listings_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Listings_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listings_Final__dbt_tmp_temp_view"
    end


