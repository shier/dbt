
      
  
  if object_id ('"stg"."Auct_Ranges_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Ranges_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Ranges_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Ranges_Incr"
    end


   EXEC('create view stg.Auct_Ranges_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(ProjectedTime as varchar), Cast(RangeNumber as varchar), Cast(RangeStart as varchar), Cast(RangeEnd as varchar), Cast(ContactTypeID as varchar), Cast(AuctionID as varchar), Cast(UpdateEventID as varchar), Cast(IsReserveLotFee as varchar), RangeName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Ranges_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Ranges_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Ranges_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Ranges_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Ranges_Incr_temp_view"
    end



  