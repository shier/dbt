
      
  
  if object_id ('"stg"."Auct_SysSubScriptions_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysSubScriptions_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysSubScriptions_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysSubScriptions_Incr"
    end


   EXEC('create view stg.Auct_SysSubScriptions_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Loopback_Detection] as varchar), Cast([Queued_reinit] as varchar), Cast([ArtID] as varchar), Cast([SrvID] as varchar), [Dest_Db], Cast([Status] as varchar), Cast([Sync_Type] as varchar), [Login_Name], Cast([SubScription_Type] as varchar), Cast([Distribution_JobID] as varchar), Cast([TimeStamp] as varchar), Cast([Update_Mode] as varchar), Cast([NoSync_Type] as varchar), [SrvName])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysSubScriptions_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysSubScriptions_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysSubScriptions_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysSubScriptions_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysSubScriptions_Incr_temp_view"
    end



  