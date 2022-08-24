
      
  
  if object_id ('"stg"."CC_ModelDifference_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifference_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ModelDifference_Incr"','U') is not null
    begin
    drop table "stg"."CC_ModelDifference_Incr"
    end


   EXEC('create view stg.CC_ModelDifference_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Version] as varchar), Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar), [OID], [UserID], [ConTextID])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ModelDifference_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ModelDifference_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ModelDifference_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ModelDifference_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifference_Incr_temp_view"
    end



  