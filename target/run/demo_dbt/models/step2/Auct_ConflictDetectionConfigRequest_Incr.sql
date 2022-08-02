
      
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigRequest_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigRequest_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConflictDetectionConfigRequest_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ConflictDetectionConfigRequest_Incr"
    end


   EXEC('create view stg.Auct_ConflictDetectionConfigRequest_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(TimeOut as varchar), Cast(Sent_Date as varchar), Cast(Modified_Date as varchar), Publication, Progress_Phase, Cast(Phase_Timed_Out as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConflictDetectionConfigRequest_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ConflictDetectionConfigRequest_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConflictDetectionConfigRequest_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigRequest_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigRequest_Incr_temp_view"
    end



  