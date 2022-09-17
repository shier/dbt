
Select
	cast([Active] as bit) [ACTIVE],
	cast([DocumentationBitID] as int) [DOCUMENTATIONBITID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_DocumentationBits_FinalView]