
Select
	CLIPID ClipID,
	CLIPTYPEID ClipTypeID,
	MULTIMEDIAID MultiMediaID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(DESCRIPTION as nvarchar(4000)) Description
From Auct_Clip_Raw