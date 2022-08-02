
      
  
  if object_id ('"stg"."Auct_PhotoType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhotoType_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PhotoType_Incr"','U') is not null
    begin
    drop table "stg"."Auct_PhotoType_Incr"
    end


   EXEC('create view stg.Auct_PhotoType_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, PhotoFileName, Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(ItemTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PhotoType_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_PhotoType_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PhotoType_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_PhotoType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhotoType_Incr_temp_view"
    end



  