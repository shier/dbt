
Select
	cast([ConnectID] as int) [CONNECTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([UsersID] as int) [USERSID],
	cast([ConfigID] as int) [CONFIGID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ConnectAssignment_FinalView]