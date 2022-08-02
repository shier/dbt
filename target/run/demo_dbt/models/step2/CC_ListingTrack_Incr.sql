
      
  
  if object_id ('"stg"."CC_ListingTrack_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrack_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingTrack_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingTrack_Incr"
    end


   EXEC('create view stg.CC_ListingTrack_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ListingID as varchar), Cast(ListingActionID as varchar), Cast(UserID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), ReferringPage, DataToken, UserAgent, Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingTrack_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingTrack_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingTrack_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingTrack_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrack_Incr_temp_view"
    end



  