create view "dbo_stg"."Auct_EnablementLog_InterView__dbt_tmp" as
    
Select
	[ENABLEMENTLOGID] [EnablementLogID],
	[USERSID] [UsersID],
	cast([ENABLED] as nvarchar(4000)) [Enabled],
	cast([REASON] as nvarchar(4000)) [Reason],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_EnablementLog_Raw]
