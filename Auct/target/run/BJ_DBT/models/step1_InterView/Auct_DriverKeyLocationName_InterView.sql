create view "dbo_stg"."Auct_DriverKeyLocationName_InterView__dbt_tmp" as
    
Select
	[DRIVERKEYLOCATIONNAMEID] [DriverKeyLocationNameID],
	cast([KEYLOCATIONNAME] as nvarchar(4000)) [KeyLocationName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DriverKeyLocationName_Raw]
