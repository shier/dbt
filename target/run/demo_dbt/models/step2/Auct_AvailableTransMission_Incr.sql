
      
  
  if object_id ('"stg"."Auct_AvailableTransMission_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableTransMission_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AvailableTransMission_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AvailableTransMission_Incr"
    end


   EXEC('create view stg.Auct_AvailableTransMission_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CarTransMissionID as varchar), Cast(CarModelID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), AllowDropDown)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableTransMission_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AvailableTransMission_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AvailableTransMission_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AvailableTransMission_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableTransMission_Incr_temp_view"
    end



  