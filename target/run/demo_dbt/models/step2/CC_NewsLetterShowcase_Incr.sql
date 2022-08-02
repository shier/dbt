
      
  
  if object_id ('"stg"."CC_NewsLetterShowcase_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetterShowcase_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_NewsLetterShowcase_Incr"','U') is not null
    begin
    drop table "stg"."CC_NewsLetterShowcase_Incr"
    end


   EXEC('create view stg.CC_NewsLetterShowcase_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([IsActive] as varchar), Cast([NewsLetterissueFK] as varchar), Cast([ListingFK] as varchar), Cast([ShowcaseSequence] as varchar), Cast([CreateDateUTC] as varchar), Cast([ModifyDateUTC] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_NewsLetterShowcase_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_NewsLetterShowcase_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_NewsLetterShowcase_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_NewsLetterShowcase_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetterShowcase_Incr_temp_view"
    end



  