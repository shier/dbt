
      
  
  if object_id ('"stg"."CC_SecURItysystemmemberperMissionsoBJect_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemmemberperMissionsoBJect_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemmemberperMissionsoBJect_Incr"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemmemberperMissionsoBJect_Incr"
    end


   EXEC('create view stg.CC_SecURItysystemmemberperMissionsoBJect_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(AllowRead as varchar), Cast(Allowwrite as varchar), Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Members, Criteria, Owner)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemmemberperMissionsoBJect_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SecURItysystemmemberperMissionsoBJect_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemmemberperMissionsoBJect_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemmemberperMissionsoBJect_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemmemberperMissionsoBJect_Incr_temp_view"
    end



  