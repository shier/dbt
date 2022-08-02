
      
  
  if object_id ('"stg"."CC_Alerttriggers_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Alerttriggers_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Alerttriggers_Incr"','U') is not null
    begin
    drop table "stg"."CC_Alerttriggers_Incr"
    end


   EXEC('create view stg.CC_Alerttriggers_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ListingID as varchar), Cast(AlerttriggerReasonID as varchar), Cast(CreateDateUTC as varchar), Cast(ImmediateDateProcessedUTC as varchar), Cast(DailyDateProcessedUTC as varchar), Cast(FraudDateProcessedUTC as varchar), Oldvalue, Newvalue)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Alerttriggers_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Alerttriggers_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Alerttriggers_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Alerttriggers_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Alerttriggers_Incr_temp_view"
    end



  