
      
  
  if object_id ('"stg"."CC_MakeModelcache_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcache_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelcache_Incr"','U') is not null
    begin
    drop table "stg"."CC_MakeModelcache_Incr"
    end


   EXEC('create view stg.CC_MakeModelcache_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Make, Model, Cast(IsActive as varchar), Cast(Year as varchar), Cast(VehicleCount as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelcache_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_MakeModelcache_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelcache_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelcache_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcache_Incr_temp_view"
    end



  