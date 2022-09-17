
Select
	cast([UsersGroupID] as int) [USERSGROUPID],
	cast([UsersID] as int) [USERSID],
	cast([GroupID] as int) [GROUPID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_UsersGroup_FinalView]