
      
  
  if object_id ('"stg"."Auct_SponsorParking_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorParking_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SponsorParking_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SponsorParking_Incr"
    end


   EXEC('create view stg.Auct_SponsorParking_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(ParkingTypeID as varchar), Cast(SponsorAuctionID as varchar), Cast(SponsorParkingNumber as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorParking_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SponsorParking_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SponsorParking_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SponsorParking_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorParking_Incr_temp_view"
    end



  