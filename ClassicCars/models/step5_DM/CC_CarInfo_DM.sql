{{ config(materialized='table',schema='dbo')}}

SELECT
	listing.[Id] as [Car_Skey],
	NULLIF(listing.[VIN], '') AS [VIN],
	NULLIF(listing.[Country], '') AS [Country],
	listing.[Make] as [CarMake],
	vehiclety.[Description] as [CarType],
	listing.[EngineSize],
	listing.[Model] as [CarModel],
	listing.[Year] as [CarModelYear],
	NULLIF(listing.[ExteriorColor], '') AS [ExteriorColor],
	NULLIF(listing.[InteriorColor], '') AS [InteriorColor],
	listing.[Transmission],
	listing.[Odometer],
	listing.[OdometerUnitId],
	listing.[Convertible] as [IsConvertible],
	listing.[StockNumber],
	listing.[TrimLevel],
	listing.[TitleStatus],
	listing.[Sunroof] as [HasSunroof],
	listing.[TTop] as [HasTTop],
	listing.[AftermarketWheels] as [HasAftermarketWheels],
	listing.[VinylRoof] as [HasVinylRoof],
	listing.[Chopped] as [IsChopped],
	listing.[Shaved] as [IsShaved],
	listing.[RestorationHistory],
	listing.[ExteriorCondition],
	listing.[SeatMaterial],
	listing.[CDPlayer], as [HasCDPlayer],
	listing.[AirConditioning], as [HasAirConditioning],
	listing.[AMRadio], as [HasAMRadio],
	listing.[AMFMRadio], as [HasAMFMRadio],
	listing.[Cassette], as [HasCassette],
	listing.[EightTrack], as [HasEightTrack],
	listing.[CustomStereo], as [HasCustomStereo],
	listing.[TintedWindows], as [HasTintedWindows],
	listing.[BucketSeats], as [HasBucketSeats],
	listing.[CruiseControl], as [HasCruiseControl],
	listing.[PowerBrakes], as [HasPowerBrakes],
	listing.[PowerSteering], as [HasPowerSteering],
	listing.[Alarm], as [HasAlarm],
	listing.[PowerLocks], as [HasPowerLocks],
	listing.[PowerWindows], as [HasPowerWindows],
	listing.[PowerSeats], as [HasPowerSeats],
	listing.[TiltWheel], as [HasTiltWheel],
	listing.[FuelInjection], as [HasFuelInjection],
	listing.[Supercharger], as [HasSupercharger],
	listing.[Blower], as [HasBlower],
	listing.[Turbo], as [IsTurbo],
	listing.[ElectronicIgnition], as [HasElectronicIgnition],
	listing.[Bored], as [IsBored],
	listing.[Stroked], as [IsStroked],
	listing.[Ported], as [IsPorted],
	listing.[Crank], as [HasCrank],
	listing.[EngineHistory], as [EngineHistory],
	listing.[EngineCondition], as [EngineCondition],
	listing.[DriveTrain], as [DriveTrain],
	listing.[Description] as [Description]

FROM [stg].[CC_Listing_FinalView] AS listing
LEFT JOIN [stg].[CC_VehicleType_FinalView] as vehiclety
	ON vehiclety.[Id] = listing.[VehicleTypeId]