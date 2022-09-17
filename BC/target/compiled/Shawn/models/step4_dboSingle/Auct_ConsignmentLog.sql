
Select
	cast([ConsignmentLogID] as int) [CONSIGNMENTLOGID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([NoteType] as nvarchar(4000)) [NOTETYPE],
	cast([Note] as nvarchar(4000)) [NOTE],
	cast([UsersID] as int) [USERSID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID] 
From stg.[Auct_ConsignmentLog_FinalView]