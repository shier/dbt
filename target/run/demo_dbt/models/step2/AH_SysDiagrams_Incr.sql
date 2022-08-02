
      
  
  if object_id ('"stg"."AH_SysDiagrams_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SysDiagrams_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SysDiagrams_Incr"','U') is not null
    begin
    drop table "stg"."AH_SysDiagrams_Incr"
    end


   EXEC('create view stg.AH_SysDiagrams_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Principal_ID as varchar), Cast(Version as varchar), Cast(Definition as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_SysDiagrams_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_SysDiagrams_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SysDiagrams_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_SysDiagrams_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SysDiagrams_Incr_temp_view"
    end



  