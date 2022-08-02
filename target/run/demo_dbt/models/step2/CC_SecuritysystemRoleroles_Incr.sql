
      
  
  if object_id ('"stg"."CC_SecuritysystemRoleroles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecuritysystemRoleroles_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecuritysystemRoleroles_Incr"','U') is not null
    begin
    drop table "stg"."CC_SecuritysystemRoleroles_Incr"
    end


   EXEC('create view stg.CC_SecuritysystemRoleroles_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(OptimisticLockField as varchar), Users, OID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecuritysystemRoleroles_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SecuritysystemRoleroles_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecuritysystemRoleroles_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SecuritysystemRoleroles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecuritysystemRoleroles_Incr_temp_view"
    end



  