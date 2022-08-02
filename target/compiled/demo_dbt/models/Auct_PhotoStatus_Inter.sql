
Select
	PHOTOSTATUSID PhotoStatusID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_PhotoStatus_Raw