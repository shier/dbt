
Select
	PHONESTATUSID PhoneStatusID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_PhoneStatus_Raw