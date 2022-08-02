{{ config(materialized='view',schema='stg')}}
Select
	[LOGOUTLOGID] [LogoutlogID],
	[USERSID] [UsersID],
	[LOGIN] [Login],
	[LOGOUT] [Logout],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Logoutlog_Raw]
