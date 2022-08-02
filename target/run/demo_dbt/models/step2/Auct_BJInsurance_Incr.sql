
      
  
  if object_id ('"stg"."Auct_BJInsurance_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BJInsurance_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BJInsurance_Incr"','U') is not null
    begin
    drop table "stg"."Auct_BJInsurance_Incr"
    end


   EXEC('create view stg.Auct_BJInsurance_Incr_temp_view as
    
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BJInsurance_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_BJInsurance_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BJInsurance_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_BJInsurance_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BJInsurance_Incr_temp_view"
    end



  