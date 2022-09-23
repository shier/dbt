{{ config(materialized='table',schema='dbo')}}
with DMStg as (
    SELECT
        HASHBYTES('SHA2_256',
            CONCAT(
                COALESCE(CAST(lpp.[ListingId] AS VARCHAR(200)), ''), '|',
                COALESCE(CAST(lpp.[VIN] AS VARCHAR(200)), ''), '|',
                COALESCE(CAST(lpp.[Year] AS VARCHAR(200)), ''), '|',
                COALESCE(CAST(lpp.[Make] AS VARCHAR(200)), ''), '|',
                COALESCE(CAST(lpp.[Model] AS VARCHAR(200)), '')
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
    from stg.AH_SZ_Properties_Pivot as lpp
    inner join [stg].[AH_Listings_FinalView] as l 
    on lpp.ListingID=l.ID
)
select 
	[ListingID],	
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