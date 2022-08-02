
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(COUNTY as nvarchar(4000)) County,
	cast(STATE as nvarchar(4000)) State,
	cast(STATEABBREVIATION as nvarchar(4000)) StateAbbreviation,
	cast(POSTALCODE as nvarchar(4000)) PostalCode,
	CITYID CityID
From Auct_City_Raw