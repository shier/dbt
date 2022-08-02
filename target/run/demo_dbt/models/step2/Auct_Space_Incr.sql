
      
  
  if object_id ('"stg"."Auct_Space_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Space_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Space_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Space_Incr"
    end


   EXEC('create view stg.Auct_Space_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(WiredInternet, WirelessInternet, Name, Phonein, Cast(Created as varchar), Cast(BoothID as varchar), Cast(SpaceSizeID as varchar), Cast(AllocatedPower as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Space_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Space_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Space_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Space_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Space_Incr_temp_view"
    end



  