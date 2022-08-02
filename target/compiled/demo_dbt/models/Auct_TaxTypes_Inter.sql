
Select
	TAXTYPEID TaxTypeID,
	UPDATEEVENTID UpdateEventID,
	TAXLEVELID TaxLevelID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_TaxTypes_Raw