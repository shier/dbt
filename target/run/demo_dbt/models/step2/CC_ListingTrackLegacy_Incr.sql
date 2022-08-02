
      
  
  if object_id ('"stg"."CC_ListingTrackLegacy_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackLegacy_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingTrackLegacy_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingTrackLegacy_Incr"
    end


   EXEC('create view stg.CC_ListingTrackLegacy_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Views as varchar), Cast(ImportDate as varchar), ImportID, ImportSource)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingTrackLegacy_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingTrackLegacy_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingTrackLegacy_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingTrackLegacy_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrackLegacy_Incr_temp_view"
    end



  