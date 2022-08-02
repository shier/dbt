
      
  
  if object_id ('"stg"."CC_AlertModes_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AlertModes_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_AlertModes_Incr"','U') is not null
    begin
    drop table "stg"."CC_AlertModes_Incr"
    end


   EXEC('create view stg.CC_AlertModes_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', Description) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_AlertModes_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_AlertModes_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_AlertModes_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_AlertModes_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AlertModes_Incr_temp_view"
    end



  