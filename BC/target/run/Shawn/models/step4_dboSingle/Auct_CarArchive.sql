
  
  if object_id ('"dbo"."Auct_CarArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarArchive__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarArchive__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarArchive__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarArchive__dbt_tmp_temp_view as
    
Select
	cast([Horsepower] as numeric(18,2)) [HORSEPOWER],
	cast([CarArchiveID] as int) [CARARCHIVEID],
	cast([CarID] as int) [CARID],
	cast([VIN] as nvarchar(4000)) [VIN],
	cast([Year] as int) [YEAR],
	cast([ItemID] as int) [ITEMID],
	cast([CarMakeID] as int) [CARMAKEID],
	cast([CarModelID] as int) [CARMODELID],
	cast([CarTypeID] as int) [CARTYPEID],
	cast([CarStyleID] as int) [CARSTYLEID],
	cast([CarTrimID] as int) [CARTRIMID],
	cast([CarTransMissionID] as int) [CARTRANSMISSIONID],
	cast([CarConditionID] as int) [CARCONDITIONID],
	cast([OriginalEngine] as nvarchar(4000)) [ORIGINALENGINE],
	cast([ExteriorColor] as nvarchar(4000)) [EXTERIORCOLOR],
	cast([InteriorColor] as nvarchar(4000)) [INTERIORCOLOR],
	cast([InteriorMaterial] as nvarchar(4000)) [INTERIORMATERIAL],
	cast([ConditionDescription] as nvarchar(4000)) [CONDITIONDESCRIPTION],
	cast([NumbersMatching] as nvarchar(4000)) [NUMBERSMATCHING],
	cast([OriginalTires] as nvarchar(4000)) [ORIGINALTIRES],
	cast([TireManufacturerID] as int) [TIREMANUFACTURERID],
	cast([FrontTireSize] as nvarchar(4000)) [FRONTTIRESIZE],
	cast([RearTireSize] as nvarchar(4000)) [REARTIRESIZE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DriverSIDE] as nvarchar(4000)) [DRIVERSIDE],
	cast([AuthenticStatusID] as int) [AUTHENTICSTATUSID],
	cast([Engine] as nvarchar(4000)) [ENGINE],
	cast([Displacement] as nvarchar(4000)) [DISPLACEMENT],
	cast([Cylinders] as nvarchar(4000)) [CYLINDERS],
	cast([HorsepowerType] as nvarchar(4000)) [HORSEPOWERTYPE],
	cast([PowerSteering] as nvarchar(4000)) [POWERSTEERING],
	cast([PowerBrakes] as nvarchar(4000)) [POWERBRAKES],
	cast([AirConditioning] as nvarchar(4000)) [AIRCONDITIONING],
	cast([OtherFeature] as nvarchar(4000)) [OTHERFEATURE],
	cast([HasHighPerFormance] as nvarchar(4000)) [HASHIGHPERFORMANCE],
	cast([HighPerFormanceDocumented] as nvarchar(4000)) [HIGHPERFORMANCEDOCUMENTED],
	cast([Make] as nvarchar(4000)) [MAKE],
	cast([Model] as nvarchar(4000)) [MODEL],
	cast([Style] as nvarchar(4000)) [STYLE],
	cast([ExtraData] as nvarchar(4000)) [EXTRADATA],
	cast([Titledto] as nvarchar(4000)) [TITLEDTO],
	cast([PowerWindows] as nvarchar(4000)) [POWERWINDOWS],
	cast([ModifiedByUserName] as nvarchar(4000)) [MODIFIEDBYUSERNAME],
	cast([ModifiedDateTime] as DATETIME) [MODIFIEDDATETIME] 
From stg.[Auct_CarArchive_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarArchive__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarArchive__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarArchive__dbt_tmp_temp_view"
    end


