{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([CarID] as varchar), [VIN], Cast([Year] as varchar), Cast([ItemID] as varchar), Cast([CarMakeID] as varchar), Cast([CarModelID] as varchar), Cast([CarTypeID] as varchar), Cast([CarStyleID] as varchar), Cast([CarTrimID] as varchar), Cast([CarTransMissionID] as varchar), Cast([CarConditionID] as varchar), [OriginalEngine], [ExteriorColor], [InteriorColor], [InteriorMaterial], [ConditionDescription], [NumbersMatching], [OriginalTires], Cast([TireManufacturerID] as varchar), [FrontTireSize], [RearTireSize], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [DriverSIDE], Cast([AuthenticStatusID] as varchar), [Engine], [Displacement], [Cylinders], [HorsepowerType], [PowerSteering], [PowerBrakes], [AirConditioning], [OtherFeature], [HasHighPerFormance], [HighPerFormanceDocumented], [Make], [Model], [Style], [ExtraData], [Titledto], [PowerWindows], [ModifiedByUserName], Cast([ModifiedDateTime] as varchar), Cast([Mileage] as varchar), Cast([CheckinMileage] as varchar), Cast([Horsepower] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Car_InterView]
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
