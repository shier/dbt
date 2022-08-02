{{ config(materialized='table',schema='dbo')}}
Select
	cast([UsersKeyID] as int) [UsersKeyID],
	cast([UsersID] as int) [UsersID],
	cast([SessionID] as nvarchar(4000)) [SessionID],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([LastActivity] as datetime) [LastActivity],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_UsersKey_FinalView]