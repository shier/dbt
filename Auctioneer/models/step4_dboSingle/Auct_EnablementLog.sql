{{ config(materialized='table',schema='dbo')}}
Select
	cast([EnablementLogID] as int) [ENABLEMENTLOGID],
	cast([UsersID] as int) [USERSID],
	cast([Enabled] as nvarchar(4000)) [ENABLED],
	cast([Reason] as nvarchar(4000)) [REASON],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_EnablementLog_FinalView]