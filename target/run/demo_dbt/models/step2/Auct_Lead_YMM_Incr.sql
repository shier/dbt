
      
  
  if object_id ('"stg"."Auct_Lead_YMM_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lead_YMM_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Lead_YMM_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Lead_YMM_Incr"
    end


   EXEC('create view stg.Auct_Lead_YMM_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Lead_YMM_ID] as varchar), Cast([UsersID] as varchar), [Car_Year], [Car_Make], [Car_Model], Cast([Create_Date] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Lead_YMM_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Lead_YMM_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Lead_YMM_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Lead_YMM_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lead_YMM_Incr_temp_view"
    end



  