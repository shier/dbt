
  
  if object_id ('"dbo"."AH_Cars_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Cars_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Cars_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Cars_DM__dbt_tmp"
    end


   EXEC('create view dbo.AH_Cars_DM__dbt_tmp_temp_view as
    
with DMStg as (
    SELECT
        HASHBYTES(''SHA2_256'',
            CONCAT(
                COALESCE(CAST(lpp.[ListingId] AS VARCHAR(200)), ''''), ''|'',
                COALESCE(CAST(lpp.[VIN] AS VARCHAR(200)), ''''), ''|'',
                COALESCE(CAST(lpp.[Year] AS VARCHAR(200)), ''''), ''|'',
                COALESCE(CAST(lpp.[Make] AS VARCHAR(200)), ''''), ''|'',
                COALESCE(CAST(lpp.[Model] AS VARCHAR(200)), '''')
            )
        ) as [Car_Skey],
		lpp.[ListingId] AS [ListingID],
		lpp.[VIN],
		lpp.[Year],
		lpp.[Make],
		lpp.[Model],
		lpp.[VehicleColor],
		lpp.[EngineSize],
		l.[CreatedOn] AS [CreatedDate],
		l.[UpdatedOn] AS [UpdatedDate],
		l.[DeletedOn] AS [DeletedDate]
    from dbo.TEST_SZ_AH_Properties_Pivot as lpp
    inner join [stg].[AH_Listings_FinalView] as l 
    on lpp.ListingID=l.ID
)
select 	
    [Car_Skey],
	[VIN],
	[Year],
	[Make],
	[Model],
	[VehicleColor],
	[EngineSize],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from DMStg
    ');

  CREATE TABLE "dbo"."AH_Cars_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Cars_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Cars_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Cars_DM__dbt_tmp_temp_view"
    end


