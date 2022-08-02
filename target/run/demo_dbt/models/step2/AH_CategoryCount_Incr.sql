
      
  
  if object_id ('"stg"."AH_CategoryCount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CategoryCount_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_CategoryCount_Incr"','U') is not null
    begin
    drop table "stg"."AH_CategoryCount_Incr"
    end


   EXEC('create view stg.AH_CategoryCount_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Count as varchar), Cast(CategoryID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_CategoryCount_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_CategoryCount_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_CategoryCount_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_CategoryCount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CategoryCount_Incr_temp_view"
    end



  