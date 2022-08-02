
Select
	cast(NOTE as nvarchar(4000)) Note,
	cast(MODIFIEDBY as nvarchar(4000)) ModifiedBy,
	cast(ARCHIVE as nvarchar(4000)) Archive,
	CREATED Created,
	INTERNALUSE Internaluse,
	NOTEID NoteID,
	CONTACTHISTORYID ContactHistoryID,
	CONTACTID ContactID,
	UPDATEEVENTID UpdateEventID
From Auct_ContactHistory_Raw