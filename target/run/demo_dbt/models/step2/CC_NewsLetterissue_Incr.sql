
      
  
  if object_id ('"stg"."CC_NewsLetterissue_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetterissue_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_NewsLetterissue_Incr"','U') is not null
    begin
    drop table "stg"."CC_NewsLetterissue_Incr"
    end


   EXEC('create view stg.CC_NewsLetterissue_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(IsActive as varchar), Cast(CreateDateUTC as varchar), Cast(ModifyDateUTC as varchar), Cast(IssueDateUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_NewsLetterissue_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_NewsLetterissue_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_NewsLetterissue_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_NewsLetterissue_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetterissue_Incr_temp_view"
    end



  