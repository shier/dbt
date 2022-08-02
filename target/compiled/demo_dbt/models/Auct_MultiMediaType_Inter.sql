
Select
	MULTIMEDIATYPEID MultiMediaTypeID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(EXTENSION as nvarchar(4000)) Extension
From Auct_MultiMediaType_Raw