
  
  if object_id ('"stg"."CC_SavedSearches_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearches_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SavedSearches_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SavedSearches_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_SavedSearches_Final__dbt_tmp_temp_view as
    
Select
	[ID],[IsActive],[IncludePrivate],[IncludeDealer],[IncludeAuction],[PriceFrom],[Priceto],[ZipCode],[SearchDescription],[SavedSearchName],[Make],[Model],[Country],[State],[CreateDate],[ModifyDate],[YearFrom],[Yearto],[Distance],[VehicleTypeID],[AlertModeID],[AlertFrequencyID],[UserID] 
From stg.[CC_SavedSearches_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_SavedSearches_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SavedSearches_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SavedSearches_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearches_Final__dbt_tmp_temp_view"
    end


