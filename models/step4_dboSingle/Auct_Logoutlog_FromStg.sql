{{ config(materialized='table',schema='dbo')}}
Select
	cast([LogoutlogID] as int) [LogoutLogID],
	cast([UsersID] as int) [UsersID],
	cast([Login] as DATETIME) [Login],
	cast([Logout] as DATETIME) [Logout],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Logoutlog_FinalView]