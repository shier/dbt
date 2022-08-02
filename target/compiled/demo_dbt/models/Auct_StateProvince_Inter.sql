
Select
	COUNTRYID CountryID,
	cast(ABBREVIATION as nvarchar(4000)) Abbreviation,
	cast(FULLNAME as nvarchar(4000)) FullName,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_StateProvince_Raw