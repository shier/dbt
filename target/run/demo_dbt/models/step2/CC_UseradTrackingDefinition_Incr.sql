
      
  
  if object_id ('"stg"."CC_UseradTrackingDefinition_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_UseradTrackingDefinition_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_UseradTrackingDefinition_Incr"','U') is not null
    begin
    drop table "stg"."CC_UseradTrackingDefinition_Incr"
    end


   EXEC('create view stg.CC_UseradTrackingDefinition_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([TrackingDefinition], [DataTokenID], Cast([StartDateUTC] as varchar), Cast([EndDateUTC] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_UseradTrackingDefinition_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_UseradTrackingDefinition_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_UseradTrackingDefinition_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_UseradTrackingDefinition_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_UseradTrackingDefinition_Incr_temp_view"
    end



  