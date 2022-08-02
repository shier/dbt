
Select
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(NAME as nvarchar(4000)) Name,
	cast(SUBPATH as nvarchar(4000)) SubPath,
	SHOTID ShotID,
	CONTENTID ContentID,
	ACTIVE Active,
	PATHID PathID,
	MULTIMEDIATYPEID MultiMediaTypeID,
	DATECREATED DateCreated
From Auct_Shot_Raw