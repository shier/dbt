
  
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
	[ID],[ListingStatusID],[ReNewalStatus],[ListingSourceFK],[CategoryID],[ProductType],[CompanyID],[Year],[PriceTypeID],[ODOMeter],[ODOMeterunitID],[VehicleTypeID],[CreateDate],[ModifyDate],[FeaturedUntil],[FeaturedOn],[LastSalesForceActivityDate],[Shuffle_DateExpiresUTC],[IsActive],[Bored],[Stroked],[Ported],[Crank],[TiltWheel],[FuelInjection],[SuPercharger],[Blower],[Turbo],[ElectronicIgnition],[PowerBrakes],[PowerSteering],[Alarm],[PowerLocks],[PowerWindows],[PowerSeats],[Cassette],[EightTrack],[CustomStereo],[TintedWindows],[BucketSeats],[CruiseControl],[Chopped],[SHaved],[CdPlayer],[AirConditioning],[AmRadio],[AmfmRadio],[Convertible],[IsFeaturedListing],[SunRoof],[TTop],[AftermarketWheels],[VINylRoof],[City],[State],[ZipCode],[Latitude],[Country],[SalesForceLeadID],[SalesForceOpportunityID],[ReNewalToken],[RestorationHistory],[ExteriorCondition],[SeatMaterial],[EngineHistory],[EngineCondition],[DriveTrain],[EngineSize],[Description],[StockNumber],[TrimLevel],[VIN],[TitleStatus],[Longitude],[Make],[Model],[ExteriorColor],[InteriorColor],[TransMission],[Price] 
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


