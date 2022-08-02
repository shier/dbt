
      
  
  if object_id ('"stg"."Auct_Shot_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Shot_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Shot_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Shot_Incr"
    end


   EXEC('create view stg.Auct_Shot_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(FileName, Name, SubPath, Cast(ContentID as varchar), Cast(Active as varchar), Cast(PathID as varchar), Cast(MultiMediaTypeID as varchar), Cast(DateCreated as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Shot_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Shot_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Shot_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Shot_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Shot_Incr_temp_view"
    end



  