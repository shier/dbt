
Select
	cast(REASON as nvarchar(4000)) Reason,
	cast(ENABLED as nvarchar(4000)) Enabled,
	CREATED Created,
	USERSID UsersID,
	UPDATEEVENTID UpdateEventID,
	ENABLEMENTLOGID EnablementLogID
From Auct_EnablementLog_Raw