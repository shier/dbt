
Select
	cast([PhotoStatusID] as int) [PHOTOSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_PhotoStatus_FinalView]