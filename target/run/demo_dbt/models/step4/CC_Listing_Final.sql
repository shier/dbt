
  
  if object_id ('"stg"."CC_Listing_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Listing_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Listing_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_Listing_Final__dbt_tmp_temp_view as
    
Select
	[ID],[City],[State],[Country],[SalesForceLeadID],[SalesForceOpportunityID],[ReNewalToken],[RestorationHistory],[ExteriorCondition],[SeatMaterial],[EngineHistory],[EngineCondition],[DriveTrain],[EngineSize],[Description],[StockNumber],[TrimLevel],[VIN],[TitleStatus],[ZipCode],[Make],[Model],[ExteriorColor],[InteriorColor],[TransMission],[ListingStatusID],[CompanyID],[Year],[PriceTypeID],[ODOMeter],[ODOMeterunitID],[VehicleTypeID],[ReNewalStatus],[ListingSourceFK],[CategoryID],[ProductType],[CreateDate],[ModifyDate],[FeaturedUntil],[FeaturedOn],[LastSalesForceActivityDate],[Shuffle_DateExpiresUTC],[IsActive],[Convertible],[Stroked],[Ported],[Crank],[Price],[Longitude],[Latitude],[FuelInjection],[SuPercharger],[Blower],[Turbo],[ElectronicIgnition],[Bored],[PowerSteering],[Alarm],[PowerLocks],[PowerWindows],[PowerSeats],[TiltWheel],[EightTrack],[CustomStereo],[TintedWindows],[BucketSeats],[CruiseControl],[PowerBrakes],[SHaved],[CdPlayer],[AirConditioning],[AmRadio],[AmfmRadio],[Cassette],[IsFeaturedListing],[SunRoof],[TTop],[AftermarketWheels],[VINylRoof],[Chopped] 
From stg.[CC_Listing_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_Listing_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Listing_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Listing_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_Final__dbt_tmp_temp_view"
    end


