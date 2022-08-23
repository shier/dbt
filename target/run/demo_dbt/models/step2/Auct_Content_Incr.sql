
      
  
  if object_id ('"stg"."Auct_Content_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Content_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Content_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Content_Incr"
    end


   EXEC('create view stg.Auct_Content_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, Cast(DateCreated as varchar), Cast(Active as varchar), Cast(ContentTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Content_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Content_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Content_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Content_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Content_Incr_temp_view"
    end



  