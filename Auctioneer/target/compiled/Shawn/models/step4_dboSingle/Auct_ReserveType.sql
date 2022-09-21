
Select
	cast([ReserveTypeID] as nvarchar(4000)) [RESERVETYPEID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_ReserveType_FinalView]