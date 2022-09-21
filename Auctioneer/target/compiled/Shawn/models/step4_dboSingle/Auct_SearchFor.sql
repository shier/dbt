
Select
	cast([Active] as bit) [ACTIVE],
	cast([SearchForID] as int) [SEARCHFORID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_SearchFor_FinalView]