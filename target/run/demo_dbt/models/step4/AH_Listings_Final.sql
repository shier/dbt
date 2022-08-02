
  
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
	[ID],[CurrentPrice],[Increment],[OriginalPrice],[Title],[Description],[CurrentListingActionUserName],[SubTitle],[Location],[Status],[LastUpdatedUser],[PrimaryImageURI],[OwnerUserName],[DeletedOn],[Enddttm],[Startdttm],[CreatedOn],[UpdatedOn],[LotID],[AcceptedActionCount],[CurrentListingActionID],[OfferCount],[CurrencyID],[PrimaryCategoryID],[AutoreListrEMAining],[CurrentQuantity],[OriginalQuantity],[ReListiteration],[OriginalreListCount],[Hits],[OwnerID],[ListingTypeID],[Duration],[Version] 
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


