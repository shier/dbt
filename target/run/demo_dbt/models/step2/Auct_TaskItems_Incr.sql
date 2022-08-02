
      
  
  if object_id ('"stg"."Auct_TaskItems_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItems_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaskItems_Incr"','U') is not null
    begin
    drop table "stg"."Auct_TaskItems_Incr"
    end


   EXEC('create view stg.Auct_TaskItems_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreatedByUserID as varchar), Cast(AssignedByUserID as varchar), Cast(TaskItemTypeID as varchar), Cast(TaskID as varchar), Cast(CompletedByUserID as varchar), Cast(Created as varchar), Cast(Completed as varchar), Message, NavigateURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaskItems_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_TaskItems_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaskItems_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_TaskItems_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItems_Incr_temp_view"
    end



  