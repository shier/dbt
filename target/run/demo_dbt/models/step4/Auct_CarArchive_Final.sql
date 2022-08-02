
  
  if object_id ('"stg"."Auct_CarArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarArchive_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CarArchive_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CarArchive_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_CarArchive_Final__dbt_tmp_temp_view as
    
Select
	[CarArchiveID],[VIN],[Titledto],[PowerWindows],[ModifiedByUserName],[HasHighPerFormance],[HighPerFormanceDocumented],[Make],[Model],[Style],[ExtraData],[Cylinders],[HorsepowerType],[PowerSteering],[PowerBrakes],[AirConditioning],[OtherFeature],[OriginalTires],[FrontTireSize],[RearTireSize],[DriverSIDE],[Engine],[Displacement],[OriginalEngine],[ExteriorColor],[InteriorColor],[InteriorMaterial],[ConditionDescription],[NumbersMatching],[Created],[ModifiedDateTime],[Horsepower],[CarTypeID],[CarStyleID],[CarTrimID],[CarTransMissionID],[CarConditionID],[TireManufacturerID],[CarID],[Year],[ItemID],[CarMakeID],[CarModelID],[UpdateEventID],[AuthenticStatusID] 
From stg.[Auct_CarArchive_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_CarArchive_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CarArchive_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CarArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarArchive_Final__dbt_tmp_temp_view"
    end


