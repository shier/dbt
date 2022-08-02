
      
  
  if object_id ('"stg"."Auct_SponsorDueDates_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorDueDates_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SponsorDueDates_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SponsorDueDates_Incr"
    end


   EXEC('create view stg.Auct_SponsorDueDates_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Amountdue as varchar), Cast(DueDate as varchar), Cast(Created as varchar), Cast(SponsorAuctionID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorDueDates_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SponsorDueDates_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SponsorDueDates_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SponsorDueDates_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorDueDates_Incr_temp_view"
    end



  