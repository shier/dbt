
      
  
  if object_id ('"stg"."CC_SecURItysystemTypeperMissionsoBJect_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemTypeperMissionsoBJect_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemTypeperMissionsoBJect_Incr"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemTypeperMissionsoBJect_Incr"
    end


   EXEC('create view stg.CC_SecURItysystemTypeperMissionsoBJect_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(TargetType, Owner, Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(OBJectType as varchar), Cast(Allowwrite as varchar), Cast(AllowCreate as varchar), Cast(AllowDelete as varchar), Cast(AllowNavigate as varchar), Cast(AllowRead as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemTypeperMissionsoBJect_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SecURItysystemTypeperMissionsoBJect_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemTypeperMissionsoBJect_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemTypeperMissionsoBJect_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemTypeperMissionsoBJect_Incr_temp_view"
    end



  