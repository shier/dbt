
Select
	CREATED Created,
	DRIVERKEYLOCATIONNAMEID DriverKeyLocationNameID,
	UPDATEEVENTID UpdateEventID,
	cast(KEYLOCATIONNAME as nvarchar(4000)) KeyLocationName
From Auct_DriverKeyLocationName_Raw