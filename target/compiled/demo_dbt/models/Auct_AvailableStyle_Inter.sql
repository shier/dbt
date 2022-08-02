
Select
	AVAILABLESTYLEID AvailableStyleID,
	CARMODELID CarModelID,
	CARSTYLEID CarStyleID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(ALLOWDROPDOWN as nvarchar(4000)) AllowDropDown
From Auct_AvailableStyle_Raw