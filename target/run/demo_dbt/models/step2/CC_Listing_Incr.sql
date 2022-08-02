
      
  
  if object_id ('"stg"."CC_Listing_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Listing_Incr"','U') is not null
    begin
    drop table "stg"."CC_Listing_Incr"
    end


   EXEC('create view stg.CC_Listing_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(City, State, Country, SalesForceLeadID, SalesForceOpportunityID, ReNewalToken, RestorationHistory, ExteriorCondition, SeatMaterial, EngineHistory, EngineCondition, DriveTrain, EngineSize, Description, StockNumber, TrimLevel, VIN, TitleStatus, ZipCode, Make, Model, ExteriorColor, InteriorColor, TransMission, Cast(ListingStatusID as varchar), Cast(CompanyID as varchar), Cast(Year as varchar), Cast(PriceTypeID as varchar), Cast(ODOMeter as varchar), Cast(ODOMeterunitID as varchar), Cast(VehicleTypeID as varchar), Cast(ReNewalStatus as varchar), Cast(ListingSourceFK as varchar), Cast(CategoryID as varchar), Cast(ProductType as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(FeaturedUntil as varchar), Cast(FeaturedOn as varchar), Cast(LastSalesForceActivityDate as varchar), Cast(Shuffle_DateExpiresUTC as varchar), Cast(IsActive as varchar), Cast(Convertible as varchar), Cast(Stroked as varchar), Cast(Ported as varchar), Cast(Crank as varchar), Cast(Price as varchar), Cast(Longitude as varchar), Cast(Latitude as varchar), Cast(FuelInjection as varchar), Cast(SuPercharger as varchar), Cast(Blower as varchar), Cast(Turbo as varchar), Cast(ElectronicIgnition as varchar), Cast(Bored as varchar), Cast(PowerSteering as varchar), Cast(Alarm as varchar), Cast(PowerLocks as varchar), Cast(PowerWindows as varchar), Cast(PowerSeats as varchar), Cast(TiltWheel as varchar), Cast(EightTrack as varchar), Cast(CustomStereo as varchar), Cast(TintedWindows as varchar), Cast(BucketSeats as varchar), Cast(CruiseControl as varchar), Cast(PowerBrakes as varchar), Cast(SHaved as varchar), Cast(CdPlayer as varchar), Cast(AirConditioning as varchar), Cast(AmRadio as varchar), Cast(AmfmRadio as varchar), Cast(Cassette as varchar), Cast(IsFeaturedListing as varchar), Cast(SunRoof as varchar), Cast(TTop as varchar), Cast(AftermarketWheels as varchar), Cast(VINylRoof as varchar), Cast(Chopped as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Listing_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Listing_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Listing_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Listing_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_Incr_temp_view"
    end



  