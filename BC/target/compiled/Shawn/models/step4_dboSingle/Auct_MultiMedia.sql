
Select
	cast([MultiMediaID] as int) [MULTIMEDIAID],
	cast([ContentID] as int) [CONTENTID],
	cast([MultiMediaTypeID] as int) [MULTIMEDIATYPEID],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([DateCreated] as datetime) [DATECREATED],
	cast([Active] as int) [ACTIVE],
	cast([MultiMediaCategoryID] as int) [MULTIMEDIACATEGORYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([PathID] as int) [PATHID],
	cast([SubPath] as nvarchar(4000)) [SUBPATH] 
From stg.[Auct_MultiMedia_FinalView]