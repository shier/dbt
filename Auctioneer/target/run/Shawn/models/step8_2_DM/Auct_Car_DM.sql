
  
  if object_id ('"dbo"."Auct_Car_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Car_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Car_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Car_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Car_DM__dbt_tmp_temp_view as
    

SELECT 
	[Item_Skey],
	[CarID],
	[VIN],
	[Year],
	[ItemID],
	[ItemType],
	[ItemDescription],
	[CarMakeID],
	[CarModelID],
	[CarTypeID],
	[CarStyleID],
	[CarTrimID],
	[CarTransmissionID],
	[CarConditionID],
	[OriginalEngine],
	[ExteriorColor],
	[InteriorColor],
	[InteriorMaterial],
	[ConditionDescription],
	[NumbersMatching],
	[OriginalTires],
	[TireManufacturerID],
	[FrontTireSize],
	[RearTireSize],
	[Created],
	[UpdateEventID],
	[DriverSide],
	[Horsepower],
	[AuthenticStatusID],
	[Engine],
	[Displacement],
	[Cylinders],
	[HorsepowerType],
	[HasPowerSteering],
	[HasPowerBrakes],
	[HasAirConditioning],
	[OtherFeature],
	[HasHighPerformance],
	[HighPerformanceDocumented],
	[CarMake],
	[CarModel],
	[CarStyle],
	[ExtraData],
	[TitledTo],
	[HasPowerWindows],
	[ModifiedByUsername],
	[ModifiedDate],
	[Mileage],
	[CheckinMileage]
FROM [stg].[Auct_Car_DM_stg]
    ');

  CREATE TABLE "dbo"."Auct_Car_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Car_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Car_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Car_DM__dbt_tmp_temp_view"
    end


