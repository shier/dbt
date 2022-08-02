
      
  
  if object_id ('"stg"."AH_Logstats_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logstats_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Logstats_Incr"','U') is not null
    begin
    drop table "stg"."AH_Logstats_Incr"
    end


   EXEC('create view stg.AH_Logstats_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([FromDate] as varchar), Cast([RangeMinutes] as varchar), Cast([EntryCount] as varchar), Cast([IsArchived] as varchar), [Severity])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Logstats_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_Logstats_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Logstats_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_Logstats_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logstats_Incr_temp_view"
    end



  