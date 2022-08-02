
      
  
  if object_id ('"stg"."Auct_MediaAuction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAuction_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaAuction_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MediaAuction_Incr"
    end


   EXEC('create view stg.Auct_MediaAuction_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(AnticipatedDate as varchar), Cast(Created as varchar), Cast(MediaID as varchar), Cast(AuctionID as varchar), Cast(Galainvites as varchar), Cast(UpdateEventID as varchar), PublishPhotos, Comments)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaAuction_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MediaAuction_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaAuction_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaAuction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAuction_Incr_temp_view"
    end



  