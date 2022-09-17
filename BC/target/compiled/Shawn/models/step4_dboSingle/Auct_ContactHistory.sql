
Select
	cast([ContactHistoryID] as int) [CONTACTHISTORYID],
	cast([ContactID] as int) [CONTACTID],
	cast([Note] as nvarchar(4000)) [NOTE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ModifiedBy] as nvarchar(4000)) [MODIFIEDBY],
	cast([Internaluse] as int) [INTERNALUSE],
	cast([Archive] as nvarchar(4000)) [ARCHIVE],
	cast([NoteID] as int) [NOTEID] 
From stg.[Auct_ContactHistory_FinalView]