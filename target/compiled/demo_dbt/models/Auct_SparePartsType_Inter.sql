
Select
	SPAREPARTSTYPEID SparePartsTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(INACTIVE as nvarchar(4000)) InActive
From Auct_SparePartsType_Raw