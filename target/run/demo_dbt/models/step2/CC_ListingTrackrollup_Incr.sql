
      
  
  if object_id ('"stg"."CC_ListingTrackrollup_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackrollup_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingTrackrollup_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingTrackrollup_Incr"
    end


   EXEC('create view stg.CC_ListingTrackrollup_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(BatchID, Cast(BatchDate as varchar), Cast(Day as varchar), Cast(Views as varchar), Cast(Year as varchar), Cast(Month as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingTrackrollup_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingTrackrollup_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingTrackrollup_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingTrackrollup_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackrollup_Incr_temp_view"
    end



  