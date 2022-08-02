
Select
	LASTACTIVITY LastActivity,
	CREATED Created,
	UPDATEEVENTID UpdateEventID,
	USERSKEYID UsersKeyID,
	USERSID UsersID,
	cast(SESSIONID as nvarchar(4000)) SessionID,
	cast(IPADDRESS as nvarchar(4000)) IpAddress
From Auct_UsersKey_Raw