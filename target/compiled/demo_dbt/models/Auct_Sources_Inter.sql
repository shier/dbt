
Select
	SOURCEID SourceID,
	UPDATEEVENTID UpdateEventID,
	DISPLAYORDER DisplayOrder,
	WEBACTIVE WebActive,
	CREATED Created,
	cast(SOURCENAME as nvarchar(4000)) SourceName,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_Sources_Raw