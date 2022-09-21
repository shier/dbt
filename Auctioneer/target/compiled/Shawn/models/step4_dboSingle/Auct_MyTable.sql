
Select
	cast([MyTableID] as int) [myTableId],
	cast([Code] as nvarchar(4000)) [code],
	cast([Description] as nvarchar(4000)) [description] 
From stg.[Auct_MyTable_FinalView]