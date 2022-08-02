
Select
	CONTACTCONTACTID ContactcontactID,
	CONTACTTYPEID ContactTypeID,
	CUSTOMERACCOUNTID CustomerAccountID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(CONTACTTITLE as nvarchar(4000)) ContactTitle
From Auct_Contactcontact_Raw