
  
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
	cast([ID] as int) [Id],
	cast([ListingStatusID] as int) [ListingStatusId],
	cast([ReNewalStatus] as int) [RenewalStatus],
	cast([ListingSourceFK] as int) [ListingSourceFK],
	cast([CategoryID] as int) [CategoryId],
	cast([ProductType] as int) [ProductType],
	cast([CompanyID] as int) [CompanyId],
	cast([Year] as int) [Year],
	cast([PriceTypeID] as int) [PriceTypeId],
	cast([ODOMeter] as int) [Odometer],
	cast([ODOMeterunitID] as int) [OdometerUnitId],
	cast([VehicleTypeID] as int) [VehicleTypeId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([FeaturedUntil] as datetime) [FeaturedUntil],
	cast([FeaturedOn] as datetime) [FeaturedOn],
	cast([LastSalesForceActivityDate] as datetime) [LastSalesforceActivityDate],
	cast([Shuffle_DateExpiresUTC] as datetime2) [Shuffle_DateExpiresUTC],
	cast([IsActive] as bit) [IsActive],
	cast([Bored] as bit) [Bored],
	cast([Stroked] as bit) [Stroked],
	cast([Ported] as bit) [Ported],
	cast([Crank] as bit) [Crank],
	cast([TiltWheel] as bit) [TiltWheel],
	cast([FuelInjection] as bit) [FuelInjection],
	cast([SuPercharger] as bit) [Supercharger],
	cast([Blower] as bit) [Blower],
	cast([Turbo] as bit) [Turbo],
	cast([ElectronicIgnition] as bit) [ElectronicIgnition],
	cast([PowerBrakes] as bit) [PowerBrakes],
	cast([PowerSteering] as bit) [PowerSteering],
	cast([Alarm] as bit) [Alarm],
	cast([PowerLocks] as bit) [PowerLocks],
	cast([PowerWindows] as bit) [PowerWindows],
	cast([PowerSeats] as bit) [PowerSeats],
	cast([Cassette] as bit) [Cassette],
	cast([EightTrack] as bit) [EightTrack],
	cast([CustomStereo] as bit) [CustomStereo],
	cast([TintedWindows] as bit) [TintedWindows],
	cast([BucketSeats] as bit) [BucketSeats],
	cast([CruiseControl] as bit) [CruiseControl],
	cast([Chopped] as bit) [Chopped],
	cast([SHaved] as bit) [Shaved],
	cast([CdPlayer] as bit) [CDPlayer],
	cast([AirConditioning] as bit) [AirConditioning],
	cast([AmRadio] as bit) [AMRadio],
	cast([AmfmRadio] as bit) [AMFMRadio],
	cast([Convertible] as bit) [Convertible],
	cast([IsFeaturedListing] as bit) [IsFeaturedListing],
	cast([SunRoof] as bit) [Sunroof],
	cast([TTop] as bit) [TTop],
	cast([AftermarketWheels] as bit) [AftermarketWheels],
	cast([VINylRoof] as bit) [VinylRoof],
	cast([City] as nvarchar(100)) [City],
	cast([State] as nvarchar(50)) [State],
	cast([ZipCode] as nvarchar(50)) [ZipCode],
	cast([Latitude] as varchar(128)) [Latitude],
	cast([Country] as nvarchar(128)) [Country],
	cast([SalesForceLeadID] as nvarchar(50)) [SalesforceLeadId],
	cast([SalesForceOpportunityID] as nvarchar(50)) [SalesforceOpportunityId],
	cast([ReNewalToken] as uniqueidentifier) [RenewalToken],
	cast([RestorationHistory] as nvarchar(50)) [RestorationHistory],
	cast([ExteriorCondition] as nvarchar(50)) [ExteriorCondition],
	cast([SeatMaterial] as nvarchar(50)) [SeatMaterial],
	cast([EngineHistory] as nvarchar(50)) [EngineHistory],
	cast([EngineCondition] as nvarchar(50)) [EngineCondition],
	cast([DriveTrain] as nvarchar(50)) [DriveTrain],
	cast([EngineSize] as nvarchar(50)) [EngineSize],
	cast([Description] as nvarchar(4000)) [Description],
	cast([StockNumber] as nvarchar(200)) [StockNumber],
	cast([TrimLevel] as nvarchar(50)) [TrimLevel],
	cast([VIN] as nvarchar(200)) [VIN],
	cast([TitleStatus] as nvarchar(4000)) [TitleStatus],
	cast([Longitude] as varchar(128)) [Longitude],
	cast([Make] as nvarchar(1000)) [Make],
	cast([Model] as nvarchar(1000)) [Model],
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


