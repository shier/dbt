
      
  
  if object_id ('"stg"."Auct_AvailableModel_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableModel_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AvailableModel_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AvailableModel_Incr"
    end


   EXEC('create view stg.Auct_AvailableModel_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(CarModelID as varchar), Cast(CarMakeID as varchar), Cast(UpdateEventID as varchar), AllowDropDown)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableModel_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AvailableModel_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AvailableModel_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AvailableModel_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableModel_Incr_temp_view"
    end



  