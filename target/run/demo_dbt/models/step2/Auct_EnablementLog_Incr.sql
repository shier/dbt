
      
  
  if object_id ('"stg"."Auct_EnablementLog_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EnablementLog_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_EnablementLog_Incr"','U') is not null
    begin
    drop table "stg"."Auct_EnablementLog_Incr"
    end


   EXEC('create view stg.Auct_EnablementLog_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Reason, Enabled, Cast(Created as varchar), Cast(UsersID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EnablementLog_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_EnablementLog_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_EnablementLog_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_EnablementLog_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EnablementLog_Incr_temp_view"
    end



  