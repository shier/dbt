
      
  
  if object_id ('"stg"."Auct_MultiMedia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MultiMedia_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MultiMedia_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MultiMedia_Incr"
    end


   EXEC('create view stg.Auct_MultiMedia_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ContentID as varchar), Cast(MultiMediaTypeID as varchar), Cast(Active as varchar), Cast(MultiMediaCategoryID as varchar), Cast(PathID as varchar), Cast(DateCreated as varchar), FileName, Name, SubPath)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MultiMedia_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MultiMedia_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MultiMedia_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MultiMedia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MultiMedia_Incr_temp_view"
    end



  