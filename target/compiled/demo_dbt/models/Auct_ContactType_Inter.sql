
Select
	CONTACTTYPEID ContactTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_ContactType_Raw