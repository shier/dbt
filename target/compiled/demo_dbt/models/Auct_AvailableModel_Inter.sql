
Select
	CREATED Created,
	AVAILABLEMODELID AvailableModelID,
	CARMODELID CarModelID,
	CARMAKEID CarMakeID,
	UPDATEEVENTID UpdateEventID,
	cast(ALLOWDROPDOWN as nvarchar(4000)) AllowDropDown
From Auct_AvailableModel_Raw