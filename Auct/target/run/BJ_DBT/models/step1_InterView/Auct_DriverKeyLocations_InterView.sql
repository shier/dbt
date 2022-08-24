create view "dbo_stg"."Auct_DriverKeyLocations_InterView__dbt_tmp" as
    
Select
	[DRIVERKEYLOCATIONSID] [DriverKeyLocationsID],
	[DRIVERINFORMATIONID] [DriverInFormationID],
	[DRIVERKEYLOCATIONNAMEID] [DriverKeyLocationNameID],
	cast([KEYLOCATIONOTHER] as nvarchar(4000)) [KeyLocationOther],
	cast([KEYLOCATIONCOMMENT] as nvarchar(4000)) [KeyLocationComment],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DriverKeyLocations_Raw]
