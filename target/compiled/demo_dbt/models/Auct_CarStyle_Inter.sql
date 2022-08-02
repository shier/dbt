
Select
	CREATED Created,
	CARSTYLEID CarStyleID,
	UPDATEEVENTID UpdateEventID,
	cast(NAME as nvarchar(4000)) Name,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_CarStyle_Raw