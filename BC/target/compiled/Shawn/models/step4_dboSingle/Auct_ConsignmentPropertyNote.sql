
Select
	cast([NoteID] as int) [NOTEID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([Note] as nvarchar(4000)) [NOTE] 
From stg.[Auct_ConsignmentPropertyNote_FinalView]