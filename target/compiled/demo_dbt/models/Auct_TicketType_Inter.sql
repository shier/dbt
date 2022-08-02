
Select
	CREATED Created,
	TICKETTYPEID TicketTypeID,
	UPDATEEVENTID UpdateEventID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name
From Auct_TicketType_Raw