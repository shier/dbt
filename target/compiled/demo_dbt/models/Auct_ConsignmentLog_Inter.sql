
Select
	CREATED Created,
	CUSTOMERACCOUNTID CustomerAccountID,
	CONSIGNMENTLOGID ConsignmentLogID,
	CONSIGNMENTID ConsignmentID,
	USERSID UsersID,
	UPDATEEVENTID UpdateEventID,
	cast(NOTETYPE as nvarchar(4000)) NoteType,
	cast(NOTE as nvarchar(4000)) Note
From Auct_ConsignmentLog_Raw