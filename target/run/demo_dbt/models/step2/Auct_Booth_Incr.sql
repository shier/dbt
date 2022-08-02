
      
  
  if object_id ('"stg"."Auct_Booth_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Booth_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Booth_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Booth_Incr"
    end


   EXEC('create view stg.Auct_Booth_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(VoltsRequired as varchar), Cast(UpdateEventID as varchar), Cast(LocationID as varchar), Cast(AuctionID as varchar), Cast(AmpsRequired as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Booth_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Booth_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Booth_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Booth_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Booth_Incr_temp_view"
    end



  