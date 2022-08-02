
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(SUBSCRIBABLE as nvarchar(4000)) Subscribable,
	CREATED Created,
	MAILINGTYPEID MailingTypeID,
	UPDATEEVENTID UpdateEventID
From Auct_MailingType_Raw