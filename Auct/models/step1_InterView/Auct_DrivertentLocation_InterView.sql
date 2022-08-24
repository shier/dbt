{{ config(materialized='view',schema='stg')}}
Select
	[DRIVERTENTLOCATIONID] [DrivertentLocationID],
	cast([DRIVERTENTLOCATIONNAME] as nvarchar(4000)) [DrivertentLocationName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DrivertentLocation_Raw]
