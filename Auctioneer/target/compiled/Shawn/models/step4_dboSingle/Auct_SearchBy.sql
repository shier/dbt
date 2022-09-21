
Select
	cast([Active] as bit) [ACTIVE],
	cast([SearchByID] as int) [SEARCHBYID],
	cast([SearchForID] as int) [SEARCHFORID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DisplayOrder] as int) [DISPLAYORDER] 
From stg.[Auct_SearchBy_FinalView]