
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."CC_Listing_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#CC_Listing_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."CC_Listing_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."CC_Listing_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."CC_Listing_Incr" (
                  "ID", "ListingStatusID", "ReNewalStatus", "ListingSourceFK", "CategoryID", "ProductType", "CompanyID", "Year", "PriceTypeID", "ODOMeter", "ODOMeterunitID", "VehicleTypeID", "CreateDate", "ModifyDate", "FeaturedUntil", "FeaturedOn", "LastSalesForceActivityDate", "Shuffle_DateExpiresUTC", "IsActive", "Bored", "Stroked", "Ported", "Crank", "TiltWheel", "FuelInjection", "SuPercharger", "Blower", "Turbo", "ElectronicIgnition", "PowerBrakes", "PowerSteering", "Alarm", "PowerLocks", "PowerWindows", "PowerSeats", "Cassette", "EightTrack", "CustomStereo", "TintedWindows", "BucketSeats", "CruiseControl", "Chopped", "SHaved", "CdPlayer", "AirConditioning", "AmRadio", "AmfmRadio", "Convertible", "IsFeaturedListing", "SunRoof", "TTop", "AftermarketWheels", "VINylRoof", "City", "State", "ZipCode", "Latitude", "Country", "SalesForceLeadID", "SalesForceOpportunityID", "ReNewalToken", "RestorationHistory", "ExteriorCondition", "SeatMaterial", "EngineHistory", "EngineCondition", "DriveTrain", "EngineSize", "Description", "StockNumber", "TrimLevel", "VIN", "TitleStatus", "Longitude", "Make", "Model", "ExteriorColor", "InteriorColor", "TransMission", "Price", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "ListingStatusID", "ReNewalStatus", "ListingSourceFK", "CategoryID", "ProductType", "CompanyID", "Year", "PriceTypeID", "ODOMeter", "ODOMeterunitID", "VehicleTypeID", "CreateDate", "ModifyDate", "FeaturedUntil", "FeaturedOn", "LastSalesForceActivityDate", "Shuffle_DateExpiresUTC", "IsActive", "Bored", "Stroked", "Ported", "Crank", "TiltWheel", "FuelInjection", "SuPercharger", "Blower", "Turbo", "ElectronicIgnition", "PowerBrakes", "PowerSteering", "Alarm", "PowerLocks", "PowerWindows", "PowerSeats", "Cassette", "EightTrack", "CustomStereo", "TintedWindows", "BucketSeats", "CruiseControl", "Chopped", "SHaved", "CdPlayer", "AirConditioning", "AmRadio", "AmfmRadio", "Convertible", "IsFeaturedListing", "SunRoof", "TTop", "AftermarketWheels", "VINylRoof", "City", "State", "ZipCode", "Latitude", "Country", "SalesForceLeadID", "SalesForceOpportunityID", "ReNewalToken", "RestorationHistory", "ExteriorCondition", "SeatMaterial", "EngineHistory", "EngineCondition", "DriveTrain", "EngineSize", "Description", "StockNumber", "TrimLevel", "VIN", "TitleStatus", "Longitude", "Make", "Model", "ExteriorColor", "InteriorColor", "TransMission", "Price", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#CC_Listing_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  