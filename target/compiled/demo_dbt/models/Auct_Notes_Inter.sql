
Select
	NOTEID NoteID,
	NOTECATEGORYID NoteCategoryID,
	CREATED Created,
	cast(TEXT as nvarchar(4000)) Text,
	cast(USERNAME as nvarchar(4000)) UserName
From Auct_Notes_Raw