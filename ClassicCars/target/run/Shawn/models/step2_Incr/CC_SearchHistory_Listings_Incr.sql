
      
  
  if object_id ('"stg"."CC_SearchHistory_Listings_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SearchHistory_Listings_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SearchHistory_Listings_Incr"','U') is not null
    begin
    drop table "stg"."CC_SearchHistory_Listings_Incr"
    end


   EXEC('create view stg.CC_SearchHistory_Listings_Incr_temp_view as
    
With hashData as (
		Select
			*, HASHBYTES(''SHA2_256'', concat(Cast([SearchHistoryFK] as varchar), Cast([ListingFK] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_SearchHistory_Listings_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SearchHistory_Listings_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SearchHistory_Listings_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SearchHistory_Listings_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SearchHistory_Listings_Incr_temp_view"
    end



  