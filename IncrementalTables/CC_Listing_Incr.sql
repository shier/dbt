{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), Cast([ListingStatusID] as varchar), Cast([ReNewalStatus] as varchar), Cast([ListingSourceFK] as varchar), Cast([CategoryID] as varchar), Cast([ProductType] as varchar), Cast([CompanyID] as varchar), Cast([Year] as varchar), Cast([PriceTypeID] as varchar), Cast([ODOMeter] as varchar), Cast([ODOMeterunitID] as varchar), Cast([VehicleTypeID] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([FeaturedUntil] as varchar), Cast([FeaturedOn] as varchar), Cast([LastSalesForceActivityDate] as varchar), Cast([Shuffle_DateExpiresUTC] as varchar), Cast([IsActive] as varchar), Cast([Bored] as varchar), Cast([Stroked] as varchar), Cast([Ported] as varchar), Cast([Crank] as varchar), Cast([TiltWheel] as varchar), Cast([FuelInjection] as varchar), Cast([SuPercharger] as varchar), Cast([Blower] as varchar), Cast([Turbo] as varchar), Cast([ElectronicIgnition] as varchar), Cast([PowerBrakes] as varchar), Cast([PowerSteering] as varchar), Cast([Alarm] as varchar), Cast([PowerLocks] as varchar), Cast([PowerWindows] as varchar), Cast([PowerSeats] as varchar), Cast([Cassette] as varchar), Cast([EightTrack] as varchar), Cast([CustomStereo] as varchar), Cast([TintedWindows] as varchar), Cast([BucketSeats] as varchar), Cast([CruiseControl] as varchar), Cast([Chopped] as varchar), Cast([SHaved] as varchar), Cast([CdPlayer] as varchar), Cast([AirConditioning] as varchar), Cast([AmRadio] as varchar), Cast([AmfmRadio] as varchar), Cast([Convertible] as varchar), Cast([IsFeaturedListing] as varchar), Cast([SunRoof] as varchar), Cast([TTop] as varchar), Cast([AftermarketWheels] as varchar), Cast([VINylRoof] as varchar), [City], [State], [ZipCode], [Latitude], [Country], [SalesForceLeadID], [SalesForceOpportunityID], [ReNewalToken], [RestorationHistory], [ExteriorCondition], [SeatMaterial], [EngineHistory], [EngineCondition], [DriveTrain], [EngineSize], [Description], [StockNumber], [TrimLevel], [VIN], [TitleStatus], [Longitude], [Make], [Model], [ExteriorColor], [InteriorColor], [TransMission], Cast([Price] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_Listing_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
