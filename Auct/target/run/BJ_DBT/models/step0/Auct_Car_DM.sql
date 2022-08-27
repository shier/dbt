
  
  if object_id ('"dbo"."Auct_Car_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Car_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Car_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Car_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Car_DM__dbt_tmp_temp_view as
    
with Auct_Car_Ex as (
    Select * From stg.[Auct_Car_FinalView] 
),
Auct_Item_Ex as (
    select * from stg.Auct_Item_FinalView
),
Auct_ItemType_Ex as (
    select * from stg.Auct_ItemType_FinalView
),
Auct_Car_stg AS (
	SELECT 
		
		car.[CARID],
		car.[VIN],
		car.[YEAR],
		car.[ITEMID],
		ISNULL(itemty.[NAME], ''Car'') AS [ITEMTYPE],
		NULLIF(item.[DESCR], '''') AS [ITEMDESCR],
		car.[CARMAKEID],
		car.[CARMODELID],
		car.[CARTYPEID],
		car.[CARSTYLEID],
		car.[CARTRIMID],
		car.[CARTRANSMISSIONID],
		car.[CARCONDITIONID],
		car.[ORIGINALENGINE],
		car.[EXTERIORCOLOR],
		car.[INTERIORCOLOR],
		car.[INTERIORMATERIAL],
		car.[CONDITIONDESCRIPTION],
		NULLIF(car.[NUMBERSMATCHING], '''') AS [NUMBERSMATCHING],
		car.[ORIGINALTIRES],
		car.[TIREMANUFACTURERID],
		car.[FRONTTIRESIZE],
		car.[REARTIRESIZE],
		car.[CREATED],
		car.[UPDATEEVENTID],
		car.[DRIVERSIDE],
		car.[HORSEPOWER],
		car.[AUTHENTICSTATUSID],
		car.[ENGINE],
		car.[DISPLACEMENT],
		car.[CYLINDERS],
		car.[HORSEPOWERTYPE],
		car.[POWERSTEERING],
		car.[POWERBRAKES],
		car.[AIRCONDITIONING],
		car.[OTHERFEATURE],
		car.[HASHIGHPERFORMANCE],
		car.[HIGHPERFORMANCEDOCUMENTED],
		car.[MAKE],
		NULLIF(car.[MODEL], '''') AS [MODEL],
		car.[STYLE],
		car.[EXTRADATA],
		car.[TITLEDTO],
		car.[POWERWINDOWS],
		car.[MODIFIEDBYUSERNAME],
		car.[MODIFIEDDATETIME],
		car.[MILEAGE],
		car.[CHECKINMILEAGE],
		ROW_NUMBER() OVER(
			PARTITION BY car.[ItemID]
			ORDER BY car.[ItemID], car.[Created] DESC, car.[CarID] DESC
		) AS [RowNumber]
	FROM [Auct_CAR_Ex] car 
	LEFT JOIN [Auct_Item_Ex] item 
		ON car.[ItemID]=item.[ItemID]
	LEFT JOIN [Auct_ItemType_Ex] itemty 
		ON item.[ItemTypeID]=itemty.[ItemTypeID]
)
SELECT 
    HASHBYTES(''SHA2_256'', 
        CONCAT(
            COALESCE(CAST([CARID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST([ITEMID] AS VARCHAR(20)), '''')
        )
    ) AS [Item_Skey],
	[CARID],
	[VIN],
	[YEAR],
	[ITEMID],
	[ITEMTYPE],
	[ITEMDESCR] as [ItemDescription],
	[CARMAKEID],
	[CARMODELID],
	[CARTYPEID],
	[CARSTYLEID],
	[CARTRIMID],
	[CARTRANSMISSIONID],
	[CARCONDITIONID],
	[ORIGINALENGINE],
	[EXTERIORCOLOR],
	[INTERIORCOLOR],
	[INTERIORMATERIAL],
	[CONDITIONDESCRIPTION],
	[NUMBERSMATCHING],
	[ORIGINALTIRES],
	[TIREMANUFACTURERID],
	[FRONTTIRESIZE],
	[REARTIRESIZE],
	[CREATED],
	[UPDATEEVENTID],
	[DRIVERSIDE],
	[HORSEPOWER],
	[AUTHENTICSTATUSID],
	[ENGINE],
	[DISPLACEMENT],
	[CYLINDERS],
	[HORSEPOWERTYPE],
	[POWERSTEERING],
	[POWERBRAKES],
	[AIRCONDITIONING],
	[OTHERFEATURE],
	[HASHIGHPERFORMANCE],
	[HIGHPERFORMANCEDOCUMENTED],
	[MAKE],
	[MODEL],
	[STYLE],
	[EXTRADATA],
	[TITLEDTO],
	[POWERWINDOWS],
	[MODIFIEDBYUSERNAME],
	[MODIFIEDDATETIME],
	[MILEAGE],
	[CHECKINMILEAGE]
FROM Auct_Car_stg
WHERE [RowNumber]=1
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


