
With hashData as (
		Select
			HASHBYTES('MD5', concat(VIN, Titledto, PowerWindows, ModifiedByUserName, HasHighPerFormance, HighPerFormanceDocumented, Make, Model, Style, ExtraData, Cylinders, HorsepowerType, PowerSteering, PowerBrakes, AirConditioning, OtherFeature, OriginalTires, FrontTireSize, RearTireSize, DriverSIDE, Engine, Displacement, OriginalEngine, ExteriorColor, InteriorColor, InteriorMaterial, ConditionDescription, NumbersMatching, Cast(Created as varchar), Cast(ModifiedDateTime as varchar), Cast(Horsepower as varchar), Cast(CarTypeID as varchar), Cast(CarStyleID as varchar), Cast(CarTrimID as varchar), Cast(CarTransMissionID as varchar), Cast(CarConditionID as varchar), Cast(TireManufacturerID as varchar), Cast(CarID as varchar), Cast(Year as varchar), Cast(ItemID as varchar), Cast(CarMakeID as varchar), Cast(CarModelID as varchar), Cast(UpdateEventID as varchar), Cast(AuthenticStatusID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarArchive_Inter]
	)
Select * From hashData
