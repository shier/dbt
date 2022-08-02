
      
  
  if object_id ('"stg"."AH_Logentries_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logentries_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Logentries_Incr"','U') is not null
    begin
    drop table "stg"."AH_Logentries_Incr"
    end


   EXEC('create view stg.AH_Logentries_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Priority as varchar), Cast(EventID as varchar), Cast(SqlDaTestamp as varchar), Cast(EntryDaTestamp as varchar), Title, FunctionalArea, Severity, Actor, ExceptionClass, Stacktrace, Message, Properties, MachineName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Logentries_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_Logentries_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Logentries_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_Logentries_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logentries_Incr_temp_view"
    end



  