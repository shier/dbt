
Select
	cast([LogoutlogID] as int) [LOGOUTLOGID],
	cast([UsersID] as int) [USERSID],
	cast([Login] as DATETIME) [LOGIN],
	cast([Logout] as DATETIME) [LOGOUT],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Logoutlog_FinalView]