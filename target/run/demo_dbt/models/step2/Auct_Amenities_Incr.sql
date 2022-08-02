
      
  
  if object_id ('"stg"."Auct_Amenities_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Amenities_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Amenities_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Amenities_Incr"
    end


   EXEC('create view stg.Auct_Amenities_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(OrderBy as varchar), Cast(FeeTypeID as varchar), Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(Created as varchar), Cast(Active as varchar), Name, CreatedByUser)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Amenities_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Amenities_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Amenities_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Amenities_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Amenities_Incr_temp_view"
    end



  