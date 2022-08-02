
Select
	DATECREATED DateCreated,
	CONTACTID ContactID,
	NEWADDITIONSID NewAdditionsID,
	cast(FIRSTNAME as nvarchar(4000)) FirstName,
	cast(MIDDLEINITIAL as nvarchar(4000)) MiddleInitial,
	cast(LASTNAME as nvarchar(4000)) LastName
From Auct_NewAdditions_Raw