
  
  if object_id ('"stg"."CC_ListingTrackrollup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackrollup_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingTrackrollup_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingTrackrollup_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingTrackrollup_Inter__dbt_tmp_temp_view as
    
Select
	cast(BatchId as nvarchar(4000)) BatchID,
	BatchDate BatchDate,
	Day Day,
	Views Views,
	ListingId ListingID,
	Year Year,
	Month Month
From CC_ListingTrackrollup_Raw
    ');

  CREATE TABLE "stg"."CC_ListingTrackrollup_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingTrackrollup_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingTrackrollup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackrollup_Inter__dbt_tmp_temp_view"
    end


