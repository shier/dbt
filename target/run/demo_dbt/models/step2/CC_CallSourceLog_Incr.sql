
      
  
  if object_id ('"stg"."CC_CallSourceLog_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_CallSourceLog_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_CallSourceLog_Incr"','U') is not null
    begin
    drop table "stg"."CC_CallSourceLog_Incr"
    end


   EXEC('create view stg.CC_CallSourceLog_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreateDateUTC as varchar), Cast(Success as varchar), IpAddress, Message, UserAgent, AdfDoc)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_CallSourceLog_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_CallSourceLog_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_CallSourceLog_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_CallSourceLog_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_CallSourceLog_Incr_temp_view"
    end



  