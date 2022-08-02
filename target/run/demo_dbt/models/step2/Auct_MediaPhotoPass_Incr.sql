
      
  
  if object_id ('"stg"."Auct_MediaPhotoPass_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaPhotoPass_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaPhotoPass_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MediaPhotoPass_Incr"
    end


   EXEC('create view stg.Auct_MediaPhotoPass_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(PhotoPassNumber, Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(MediaAuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaPhotoPass_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MediaPhotoPass_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaPhotoPass_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaPhotoPass_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaPhotoPass_Incr_temp_view"
    end



  