
      
  
  if object_id ('"stg"."Auct_ReportperMission_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportperMission_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ReportperMission_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ReportperMission_Incr"
    end


   EXEC('create view stg.Auct_ReportperMission_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([ReportID] as varchar), [PerMission])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportperMission_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ReportperMission_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ReportperMission_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ReportperMission_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportperMission_Incr_temp_view"
    end



  