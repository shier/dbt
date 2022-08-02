
      
  
  if object_id ('"stg"."CC_SecURItysystemRole_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemRole_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemRole_Incr"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemRole_Incr"
    end


   EXEC('create view stg.CC_SecURItysystemRole_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, Cast(Isadministrative as varchar), Cast(CaneditModel as varchar), Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(OBJectType as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemRole_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SecURItysystemRole_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemRole_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemRole_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemRole_Incr_temp_view"
    end



  