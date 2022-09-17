
Select
	cast([NodeTreeTypeID] as int) [NODETREETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_NodeTreeType_FinalView]