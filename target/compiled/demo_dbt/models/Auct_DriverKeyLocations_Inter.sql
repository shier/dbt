
Select
	cast(KEYLOCATIONOTHER as nvarchar(4000)) KeyLocationOther,
	cast(KEYLOCATIONCOMMENT as nvarchar(4000)) KeyLocationComment,
	DRIVERKEYLOCATIONSID DriverKeyLocationsID,
	DRIVERINFORMATIONID DriverInFormationID,
	DRIVERKEYLOCATIONNAMEID DriverKeyLocationNameID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created
From Auct_DriverKeyLocations_Raw