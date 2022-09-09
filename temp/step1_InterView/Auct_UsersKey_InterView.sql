{{ config(materialized='view',schema='stg')}}
Select
	[USERSKEYID] [UsersKeyID],
	[USERSID] [UsersID],
	cast([SESSIONID] as nvarchar(4000)) [SessionID],
	cast([IPADDRESS] as nvarchar(4000)) [IpAddress],
	[LASTACTIVITY] [LastActivity],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UsersKey_Raw]
