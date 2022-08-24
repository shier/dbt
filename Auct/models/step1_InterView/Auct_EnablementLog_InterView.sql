{{ config(materialized='view',schema='stg')}}
Select
	[ENABLEMENTLOGID] [EnablementLogID],
	[USERSID] [UsersID],
	cast([ENABLED] as nvarchar(4000)) [Enabled],
	cast([REASON] as nvarchar(4000)) [Reason],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_EnablementLog_Raw]
