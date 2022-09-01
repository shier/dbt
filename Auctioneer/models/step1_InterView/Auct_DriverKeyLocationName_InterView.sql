{{ config(materialized='view',schema='stg')}}
Select
	[DRIVERKEYLOCATIONNAMEID] [DriverKeyLocationNameID],
	cast([KEYLOCATIONNAME] as nvarchar(4000)) [KeyLocationName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DriverKeyLocationName_Raw]
