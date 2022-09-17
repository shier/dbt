{{ config(materialized='table',schema='dbo')}}
Select
	cast([UsersKeyID] as int) [USERSKEYID],
	cast([UsersID] as int) [USERSID],
	cast([SessionID] as nvarchar(4000)) [SESSIONID],
	cast([IpAddress] as nvarchar(4000)) [IPADDRESS],
	cast([LastActivity] as datetime) [LASTACTIVITY],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_UsersKey_FinalView]