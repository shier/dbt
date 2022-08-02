
      
  
  if object_id ('"stg"."CC_NewsLetter_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetter_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_NewsLetter_Incr"','U') is not null
    begin
    drop table "stg"."CC_NewsLetter_Incr"
    end


   EXEC('create view stg.CC_NewsLetter_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Email, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_NewsLetter_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_NewsLetter_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_NewsLetter_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_NewsLetter_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetter_Incr_temp_view"
    end



  