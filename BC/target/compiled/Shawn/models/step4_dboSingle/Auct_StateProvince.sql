
Select
	cast([Abbreviation] as nvarchar(4000)) [ABBREVIATION],
	cast([FullName] as nvarchar(4000)) [FULLNAME],
	cast([CountryID] as int) [COUNTRYID],
	cast([Active] as nvarchar(4000)) [ACTIVE] 
From stg.[Auct_StateProvince_FinalView]