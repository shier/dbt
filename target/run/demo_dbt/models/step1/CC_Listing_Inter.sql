
  
  if object_id ('"stg"."CC_Listing_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Listing_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Listing_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Listing_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[ListingStatusId] [ListingStatusID],
	[RenewalStatus] [ReNewalStatus],
	[ListingSourceFK] [ListingSourceFK],
	[CategoryId] [CategoryID],
	[ProductType] [ProductType],
	[CompanyId] [CompanyID],
	[Year] [Year],
	[PriceTypeId] [PriceTypeID],
	[Odometer] [ODOMeter],
	[OdometerUnitId] [ODOMeterunitID],
	[VehicleTypeId] [VehicleTypeID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[FeaturedUntil] [FeaturedUntil],
	[FeaturedOn] [FeaturedOn],
	[LastSalesforceActivityDate] [LastSalesForceActivityDate],
	[Shuffle_DateExpiresUTC] [Shuffle_DateExpiresUTC],
	[IsActive] [IsActive],
	[Bored] [Bored],
	[Stroked] [Stroked],
	[Ported] [Ported],
	[Crank] [Crank],
	[TiltWheel] [TiltWheel],
	[FuelInjection] [FuelInjection],
	[Supercharger] [SuPercharger],
	[Blower] [Blower],
	[Turbo] [Turbo],
	[ElectronicIgnition] [ElectronicIgnition],
	[PowerBrakes] [PowerBrakes],
	[PowerSteering] [PowerSteering],
	[Alarm] [Alarm],
	[PowerLocks] [PowerLocks],
	[PowerWindows] [PowerWindows],
	[PowerSeats] [PowerSeats],
	[Cassette] [Cassette],
	[EightTrack] [EightTrack],
	[CustomStereo] [CustomStereo],
	[TintedWindows] [TintedWindows],
	[BucketSeats] [BucketSeats],
	[CruiseControl] [CruiseControl],
	[Chopped] [Chopped],
	[Shaved] [SHaved],
	[CDPlayer] [CdPlayer],
	[AirConditioning] [AirConditioning],
	[AMRadio] [AmRadio],
	[AMFMRadio] [AmfmRadio],
	[Convertible] [Convertible],
	[IsFeaturedListing] [IsFeaturedListing],
	[Sunroof] [SunRoof],
	[TTop] [TTop],
	[AftermarketWheels] [AftermarketWheels],
	[VinylRoof] [VINylRoof],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([Latitude] as nvarchar(4000)) [Latitude],
	cast([Country] as nvarchar(4000)) [Country],
	cast([SalesforceLeadId] as nvarchar(4000)) [SalesForceLeadID],
	cast([SalesforceOpportunityId] as nvarchar(4000)) [SalesForceOpportunityID],
	cast([RenewalToken] as nvarchar(4000)) [ReNewalToken],
	cast([RestorationHistory] as nvarchar(4000)) [RestorationHistory],
	cast([ExteriorCondition] as nvarchar(4000)) [ExteriorCondition],
	cast([SeatMaterial] as nvarchar(4000)) [SeatMaterial],
	cast([EngineHistory] as nvarchar(4000)) [EngineHistory],
	cast([EngineCondition] as nvarchar(4000)) [EngineCondition],
	cast([DriveTrain] as nvarchar(4000)) [DriveTrain],
	cast([EngineSize] as nvarchar(4000)) [EngineSize],
	cast([Description] as nvarchar(4000)) [Description],
	cast([StockNumber] as nvarchar(4000)) [StockNumber],
	cast([TrimLevel] as nvarchar(4000)) [TrimLevel],
	cast([VIN] as nvarchar(4000)) [VIN],
	cast([TitleStatus] as nvarchar(4000)) [TitleStatus],
	cast([Longitude] as nvarchar(4000)) [Longitude],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([ExteriorColor] as nvarchar(4000)) [ExteriorColor],
	cast([InteriorColor] as nvarchar(4000)) [InteriorColor],
	cast([Transmission] as nvarchar(4000)) [TransMission],
	[Price] [Price]
From stg.[CC_Listing_Raw]
    ');

  CREATE TABLE "stg"."CC_Listing_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Listing_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Listing_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listing_Inter__dbt_tmp_temp_view"
    end


