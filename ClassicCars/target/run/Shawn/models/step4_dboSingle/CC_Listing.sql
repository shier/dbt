
  
  if object_id ('"dbo"."CC_Listing__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Listing__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Listing__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Listing__dbt_tmp"
    end


   EXEC('create view dbo.CC_Listing__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([ListingStatusID] as int) [ListingStatusID],
	cast([ReNewalStatus] as int) [RenewalStatus],
	cast([ListingSourceFK] as int) [ListingSourceFK],
	cast([CategoryID] as int) [CategoryID],
	cast([ProductType] as int) [ProductType],
	cast([CompanyID] as int) [CompanyID],
	cast([Year] as int) [Year],
	cast([PriceTypeID] as int) [PriceTypeID],
	cast([ODOMeter] as int) [Odometer],
	cast([ODOMeterunitID] as int) [OdometerUnitID],
	cast([VehicleTypeID] as int) [CarTypeID],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate],
	cast([FeaturedUntil] as datetime) [FeaturedUntilDate],
	cast([FeaturedOn] as datetime) [FeaturedOnDate],
	cast([LastSalesForceActivityDate] as datetime) [LastSalesforceActivityDate],
	cast([Shuffle_DateExpiresUTC] as datetime2) [ShuffleExpiresDateUTC],
	cast([IsActive] as bit) [IsActive],
	cast([Bored] as bit) [IsBored],
	cast([Stroked] as bit) [IsStroked],
	cast([Ported] as bit) [IsPorted],
	cast([Crank] as bit) [HasCrank],
	cast([TiltWheel] as bit) [HasTiltWheel],
	cast([FuelInjection] as bit) [HasFuelInjection],
	cast([SuPercharger] as bit) [HasSupercharger],
	cast([Blower] as bit) [HasBlower],
	cast([Turbo] as bit) [IsTurbo],
	cast([ElectronicIgnition] as bit) [HasElectronicIgnition],
	cast([PowerBrakes] as bit) [HasPowerBrakes],
	cast([PowerSteering] as bit) [HasPowerSteering],
	cast([Alarm] as bit) [HasAlarm],
	cast([PowerLocks] as bit) [HasPowerLocks],
	cast([PowerWindows] as bit) [HasPowerWindows],
	cast([PowerSeats] as bit) [HasPowerSeats],
	cast([Cassette] as bit) [HasCassette],
	cast([EightTrack] as bit) [HasEightTrack],
	cast([CustomStereo] as bit) [HasCustomStereo],
	cast([TintedWindows] as bit) [HasTintedWindows],
	cast([BucketSeats] as bit) [HasBucketSeats],
	cast([CruiseControl] as bit) [HasCruiseControl],
	cast([Chopped] as bit) [IsChopped],
	cast([SHaved] as bit) [IsShaved],
	cast([CdPlayer] as bit) [HasCDPlayer],
	cast([AirConditioning] as bit) [HasAirConditioning],
	cast([AmRadio] as bit) [HasAMRadio],
	cast([AmfmRadio] as bit) [HasAMFMRadio],
	cast([Convertible] as bit) [IsConvertible],
	cast([IsFeaturedListing] as bit) [IsFeaturedListing],
	cast([SunRoof] as bit) [HasSunroof],
	cast([TTop] as bit) [HasTTop],
	cast([AftermarketWheels] as bit) [HasAftermarketWheels],
	cast([VINylRoof] as bit) [HasVinylRoof],
	cast([City] as nvarchar(100)) [City],
	cast([State] as nvarchar(50)) [State],
	cast([ZipCode] as nvarchar(50)) [PostalCode],
	cast([Latitude] as varchar(128)) [Latitude],
	cast([Country] as nvarchar(128)) [CountryCode],
	cast([SalesForceLeadID] as nvarchar(50)) [SalesforceLeadID],
	cast([SalesForceOpportunityID] as nvarchar(50)) [SalesforceOpportunityID],
	cast([ReNewalToken] as uniqueidentifier) [RenewalToken],
	cast([RestorationHistory] as nvarchar(50)) [RestorationHistory],
	cast([ExteriorCondition] as nvarchar(50)) [ExteriorCondition],
	cast([SeatMaterial] as nvarchar(50)) [SeatMaterial],
	cast([EngineHistory] as nvarchar(50)) [EngineHistory],
	cast([EngineCondition] as nvarchar(50)) [EngineCondition],
	cast([DriveTrain] as nvarchar(50)) [DriveTrain],
	cast([EngineSize] as nvarchar(50)) [Engine],
	cast([Description] as nvarchar(4000)) [Description],
	cast([StockNumber] as nvarchar(200)) [StockNumber],
	cast([TrimLevel] as nvarchar(50)) [TrimLevel],
	cast([VIN] as nvarchar(200)) [VIN],
	cast([TitleStatus] as nvarchar(4000)) [TitleStatus],
	cast([Longitude] as varchar(128)) [Longitude],
	cast([Make] as nvarchar(1000)) [CarMake],
	cast([Model] as nvarchar(1000)) [CarModel],
	cast([ExteriorColor] as nvarchar(50)) [ExteriorColor],
	cast([InteriorColor] as nvarchar(50)) [InteriorColor],
	cast([TransMission] as nvarchar(50)) [Transmission],
	cast([Price] as money) [Price] 
From stg.[CC_Listing_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Listing__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Listing__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Listing__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Listing__dbt_tmp_temp_view"
    end


