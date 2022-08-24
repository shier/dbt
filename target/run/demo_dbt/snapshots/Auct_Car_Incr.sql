
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_Car_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_Car_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_Car_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_Car_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_Car_Incr" (
                  "CarID", "VIN", "Year", "ItemID", "CarMakeID", "CarModelID", "CarTypeID", "CarStyleID", "CarTrimID", "CarTransMissionID", "CarConditionID", "OriginalEngine", "ExteriorColor", "InteriorColor", "InteriorMaterial", "ConditionDescription", "NumbersMatching", "OriginalTires", "TireManufacturerID", "FrontTireSize", "RearTireSize", "Created", "UpdateEventID", "DriverSIDE", "AuthenticStatusID", "Engine", "Displacement", "Cylinders", "HorsepowerType", "PowerSteering", "PowerBrakes", "AirConditioning", "OtherFeature", "HasHighPerFormance", "HighPerFormanceDocumented", "Make", "Model", "Style", "ExtraData", "Titledto", "PowerWindows", "ModifiedByUserName", "ModifiedDateTime", "Mileage", "CheckinMileage", "Horsepower", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "CarID", "VIN", "Year", "ItemID", "CarMakeID", "CarModelID", "CarTypeID", "CarStyleID", "CarTrimID", "CarTransMissionID", "CarConditionID", "OriginalEngine", "ExteriorColor", "InteriorColor", "InteriorMaterial", "ConditionDescription", "NumbersMatching", "OriginalTires", "TireManufacturerID", "FrontTireSize", "RearTireSize", "Created", "UpdateEventID", "DriverSIDE", "AuthenticStatusID", "Engine", "Displacement", "Cylinders", "HorsepowerType", "PowerSteering", "PowerBrakes", "AirConditioning", "OtherFeature", "HasHighPerFormance", "HighPerFormanceDocumented", "Make", "Model", "Style", "ExtraData", "Titledto", "PowerWindows", "ModifiedByUserName", "ModifiedDateTime", "Mileage", "CheckinMileage", "Horsepower", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_Car_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  