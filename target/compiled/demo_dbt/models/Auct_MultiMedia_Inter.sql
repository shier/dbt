
Select
	MULTIMEDIAID MultiMediaID,
	CONTENTID ContentID,
	MULTIMEDIATYPEID MultiMediaTypeID,
	ACTIVE Active,
	MULTIMEDIACATEGORYID MultiMediaCategoryID,
	PATHID PathID,
	DATECREATED DateCreated,
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(NAME as nvarchar(4000)) Name,
	cast(SUBPATH as nvarchar(4000)) SubPath
From Auct_MultiMedia_Raw