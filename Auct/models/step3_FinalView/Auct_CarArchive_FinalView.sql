{{ config(materialized='view',schema='stg')}}
Select
	[CarArchiveID],[Horsepower],[CarID],[VIN],[Year],[ItemID],[CarMakeID],[CarModelID],[CarTypeID],[CarStyleID],[CarTrimID],[CarTransMissionID],[CarConditionID],[OriginalEngine],[ExteriorColor],[InteriorColor],[InteriorMaterial],[ConditionDescription],[NumbersMatching],[OriginalTires],[TireManufacturerID],[FrontTireSize],[RearTireSize],[Created],[UpdateEventID],[DriverSIDE],[AuthenticStatusID],[Engine],[Displacement],[Cylinders],[HorsepowerType],[PowerSteering],[PowerBrakes],[AirConditioning],[OtherFeature],[HasHighPerFormance],[HighPerFormanceDocumented],[Make],[Model],[Style],[ExtraData],[Titledto],[PowerWindows],[ModifiedByUserName],[ModifiedDateTime] 
From stg.[Auct_CarArchive_Incr] 
Where [dbt_valid_to] is null