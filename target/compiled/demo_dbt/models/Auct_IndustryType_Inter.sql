
Select
	INDUSTRYTYPEID IndustryTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_IndustryType_Raw