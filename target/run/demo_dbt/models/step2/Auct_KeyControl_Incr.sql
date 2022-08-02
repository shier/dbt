
      
  
  if object_id ('"stg"."Auct_KeyControl_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_KeyControl_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_KeyControl_Incr"','U') is not null
    begin
    drop table "stg"."Auct_KeyControl_Incr"
    end


   EXEC('create view stg.Auct_KeyControl_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Active as varchar), Cast(ConsignmentID as varchar), Cast(CurrentKeyControlTransactionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_KeyControl_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_KeyControl_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_KeyControl_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_KeyControl_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_KeyControl_Incr_temp_view"
    end



  