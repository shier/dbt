
      
  
  if object_id ('"stg"."CC_SysDiagrams_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SysDiagrams_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SysDiagrams_Incr"','U') is not null
    begin
    drop table "stg"."CC_SysDiagrams_Incr"
    end


   EXEC('create view stg.CC_SysDiagrams_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Definition as varchar), Cast(Principal_ID as varchar), Cast(Diagram_ID as varchar), Cast(Version as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SysDiagrams_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SysDiagrams_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SysDiagrams_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SysDiagrams_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SysDiagrams_Incr_temp_view"
    end



  