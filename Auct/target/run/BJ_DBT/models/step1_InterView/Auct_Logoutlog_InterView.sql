create view "dbo_stg"."Auct_Logoutlog_InterView__dbt_tmp" as
    
Select
	[LOGOUTLOGID] [LogoutlogID],
	[USERSID] [UsersID],
	[LOGIN] [Login],
	[LOGOUT] [Logout],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Logoutlog_Raw]
