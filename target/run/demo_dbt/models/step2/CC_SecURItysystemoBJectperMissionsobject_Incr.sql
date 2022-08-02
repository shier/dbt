
      
  
  if object_id ('"stg"."CC_SecURItysystemoBJectperMissionsobject_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemoBJectperMissionsobject_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemoBJectperMissionsobject_Incr"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemoBJectperMissionsobject_Incr"
    end


   EXEC('create view stg.CC_SecURItysystemoBJectperMissionsobject_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Criteria, Owner, Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(AllowRead as varchar), Cast(Allowwrite as varchar), Cast(AllowDelete as varchar), Cast(AllowNavigate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemoBJectperMissionsobject_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SecURItysystemoBJectperMissionsobject_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemoBJectperMissionsobject_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemoBJectperMissionsobject_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemoBJectperMissionsobject_Incr_temp_view"
    end



  