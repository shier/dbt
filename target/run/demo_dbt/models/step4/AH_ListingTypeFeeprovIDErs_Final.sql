
  
  if object_id ('"stg"."AH_ListingTypeFeeprovIDErs_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingTypeFeeprovIDErs_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingTypeFeeprovIDErs_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingTypeFeeprovIDErs_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingTypeFeeprovIDErs_Final__dbt_tmp_temp_view as
    
Select
	[ID],[ProvIDErName],[CreatedOn],[UpdatedOn],[DeletedOn],[Enabled],[ListingTypeID] 
From stg.[AH_ListingTypeFeeprovIDErs_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_ListingTypeFeeprovIDErs_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingTypeFeeprovIDErs_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingTypeFeeprovIDErs_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingTypeFeeprovIDErs_Final__dbt_tmp_temp_view"
    end


