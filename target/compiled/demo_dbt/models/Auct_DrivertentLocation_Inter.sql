
Select
	CREATED Created,
	DRIVERTENTLOCATIONID DrivertentLocationID,
	UPDATEEVENTID UpdateEventID,
	cast(DRIVERTENTLOCATIONNAME as nvarchar(4000)) DrivertentLocationName
From Auct_DrivertentLocation_Raw