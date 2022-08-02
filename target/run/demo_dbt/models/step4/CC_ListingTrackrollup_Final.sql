
  
  if object_id ('"stg"."CC_ListingTrackrollup_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackrollup_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingTrackrollup_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingTrackrollup_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingTrackrollup_Final__dbt_tmp_temp_view as
    
Select
	[ListingID],[BatchID],[BatchDate],[Day],[Views],[Year],[Month] 
From stg.[CC_ListingTrackrollup_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_ListingTrackrollup_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingTrackrollup_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingTrackrollup_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackrollup_Final__dbt_tmp_temp_view"
    end


