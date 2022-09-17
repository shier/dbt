
Select
	cast([NoteID] as int) [NOTEID],
	cast([Text] as nvarchar(4000)) [TEXT],
	cast([NoteCategoryID] as int) [NOTECATEGORYID],
	cast([UserName] as nvarchar(512)) [USERNAME],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_Notes_FinalView]