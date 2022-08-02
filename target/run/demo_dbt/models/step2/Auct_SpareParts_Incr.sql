
      
  
  if object_id ('"stg"."Auct_SpareParts_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SpareParts_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SpareParts_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SpareParts_Incr"
    end


   EXEC('create view stg.Auct_SpareParts_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(BarcodeID, PartsDescription, InActive, CheckOutText, SpaceNumber, Cast(Created as varchar), Cast(DriverInFormationID as varchar), Cast(SparePartsTypeID as varchar), Cast(InActiveUpdateEventID as varchar), Cast(CheckOutUpdateEventID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SpareParts_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SpareParts_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SpareParts_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SpareParts_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SpareParts_Incr_temp_view"
    end



  