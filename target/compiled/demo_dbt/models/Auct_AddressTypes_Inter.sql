
Select
	CREATED Created,
	ADDRESSTYPEID AddressTypeID,
	UPDATEEVENTID UpdateEventID,
	LEVEL Level,
	cast(NAME as nvarchar(4000)) Name,
	cast(ICON as nvarchar(4000)) Icon,
	cast(PROCESSORNAME as nvarchar(4000)) ProcessorName
From Auct_AddressTypes_Raw