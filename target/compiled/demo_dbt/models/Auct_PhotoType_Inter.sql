
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(PHOTOFILENAME as nvarchar(4000)) PhotoFileName,
	CREATED Created,
	PHOTOTYPEID PhotoTypeID,
	UPDATEEVENTID UpdateEventID,
	ITEMTYPEID ItemTypeID
From Auct_PhotoType_Raw