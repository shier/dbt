
      
  
  if object_id ('"stg"."Auct_AvailableTrim_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableTrim_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AvailableTrim_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AvailableTrim_Incr"
    end


   EXEC('create view stg.Auct_AvailableTrim_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(AllowDropDown, Cast(Created as varchar), Cast(CarTrimID as varchar), Cast(CarModelID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableTrim_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AvailableTrim_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AvailableTrim_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AvailableTrim_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableTrim_Incr_temp_view"
    end



  