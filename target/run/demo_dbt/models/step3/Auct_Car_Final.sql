
  
  if object_id ('"stg"."Auct_Car_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Car_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Car_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Car_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Car_Final__dbt_tmp_temp_view as
    
Select
	[CarID],[VIN],[Year],[ItemID],[CarMakeID],[CarModelID],[CarTypeID],[CarStyleID],[CarTrimID],[CarTransMissionID],[CarConditionID],[OriginalEngine],[ExteriorColor],[InteriorColor],[InteriorMaterial],[ConditionDescription],[NumbersMatching],[OriginalTires],[TireManufacturerID],[FrontTireSize],[RearTireSize],[Created],[UpdateEventID],[DriverSIDE],[AuthenticStatusID],[Engine],[Displacement],[Cylinders],[HorsepowerType],[PowerSteering],[PowerBrakes],[AirConditioning],[OtherFeature],[HasHighPerFormance],[HighPerFormanceDocumented],[Make],[Model],[Style],[ExtraData],[Titledto],[PowerWindows],[ModifiedByUserName],[ModifiedDateTime],[Mileage],[CheckinMileage],[Horsepower] 
From stg.[Auct_Car_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Car_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Car_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Car_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Car_Final__dbt_tmp_temp_view"
    end


