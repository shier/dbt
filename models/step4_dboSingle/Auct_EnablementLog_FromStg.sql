{{ config(materialized='table',schema='dbo')}}
Select
	cast([EnablementLogID] as int) [EnablementLogID],
	cast([UsersID] as int) [UsersID],
	cast([Enabled] as nvarchar(4000)) [Enabled],
	cast([Reason] as nvarchar(4000)) [Reason],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_EnablementLog_FinalView]