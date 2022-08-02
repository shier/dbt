
      
  
  if object_id ('"stg"."Auct_ODOMeterReading_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ODOMeterReading_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ODOMeterReading_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ODOMeterReading_Incr"
    end


   EXEC('create view stg.Auct_ODOMeterReading_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CarID as varchar), Cast(ReadingTypeID as varchar), Cast(Reading as varchar), Cast(ReadByContactID as varchar), Cast(UpdateEventID as varchar), Cast(DateRead as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ODOMeterReading_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ODOMeterReading_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ODOMeterReading_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ODOMeterReading_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ODOMeterReading_Incr_temp_view"
    end



  