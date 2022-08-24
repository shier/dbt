create view "stg"."Auct_DrivertentLocation_InterView__dbt_tmp" as
    
Select
	[DRIVERTENTLOCATIONID] [DrivertentLocationID],
	cast([DRIVERTENTLOCATIONNAME] as nvarchar(4000)) [DrivertentLocationName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DrivertentLocation_Raw]
