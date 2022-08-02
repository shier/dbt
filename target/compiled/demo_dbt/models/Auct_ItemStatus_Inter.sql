
Select
	ITEMSTATUSID ItemStatusID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_ItemStatus_Raw