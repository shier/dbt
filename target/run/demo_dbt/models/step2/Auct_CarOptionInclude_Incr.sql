
      
  
  if object_id ('"stg"."Auct_CarOptionInclude_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarOptionInclude_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CarOptionInclude_Incr"','U') is not null
    begin
    drop table "stg"."Auct_CarOptionInclude_Incr"
    end


   EXEC('create view stg.Auct_CarOptionInclude_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(SourceCarOptionID as varchar), Cast(TargetCarOptionID as varchar), Cast(UpdateEventID as varchar), Include)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarOptionInclude_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_CarOptionInclude_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CarOptionInclude_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_CarOptionInclude_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarOptionInclude_Incr_temp_view"
    end



  