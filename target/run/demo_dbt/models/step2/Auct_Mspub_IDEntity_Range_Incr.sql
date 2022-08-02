
      
  
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mspub_IDEntity_Range_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Mspub_IDEntity_Range_Incr"
    end


   EXEC('create view stg.Auct_Mspub_IDEntity_Range_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([OBJID] as varchar), Cast([ThresHold] as varchar), Cast([Range] as varchar), Cast([Pub_Range] as varchar), Cast([Current_Pub_Range] as varchar), Cast([Last_Seed] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Mspub_IDEntity_Range_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Mspub_IDEntity_Range_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Mspub_IDEntity_Range_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mspub_IDEntity_Range_Incr_temp_view"
    end



  