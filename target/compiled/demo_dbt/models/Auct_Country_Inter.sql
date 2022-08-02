
Select
	COUNTRYID CountryID,
	COUNTRYCODE CountryCode,
	UPDATEEVENTID UpdateEventID,
	DISPLAYORDER DisplayOrder,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(SYNCHID as nvarchar(4000)) SynchID
From Auct_Country_Raw