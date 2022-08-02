
      
  
  if object_id ('"stg"."Auct_Car_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Car_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Car_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Car_Incr"
    end


   EXEC('create view stg.Auct_Car_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Horsepower as varchar), Cast(Created as varchar), Cast(ModifiedDateTime as varchar), Cast(CarStyleID as varchar), Cast(CarTrimID as varchar), Cast(CarTransMissionID as varchar), Cast(CarConditionID as varchar), Cast(TireManufacturerID as varchar), Cast(UpdateEventID as varchar), Cast(Year as varchar), Cast(ItemID as varchar), Cast(CarMakeID as varchar), Cast(CarModelID as varchar), Cast(CarTypeID as varchar), Cast(AuthenticStatusID as varchar), Cast(Mileage as varchar), Cast(CheckinMileage as varchar), ExtraData, Titledto, PowerWindows, ModifiedByUserName, OtherFeature, HasHighPerFormance, HighPerFormanceDocumented, Make, Model, Style, Displacement, Cylinders, HorsepowerType, PowerSteering, PowerBrakes, AirConditioning, NumbersMatching, OriginalTires, FrontTireSize, RearTireSize, DriverSIDE, Engine, VIN, OriginalEngine, ExteriorColor, InteriorColor, InteriorMaterial, ConditionDescription)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Car_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Car_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Car_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Car_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Car_Incr_temp_view"
    end



  