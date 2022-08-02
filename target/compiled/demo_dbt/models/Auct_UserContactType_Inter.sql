
Select
	UPDATEEVENTID UpdateEventID,
	USERCONTACTTYPEID UserContactTypeID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_UserContactType_Raw