
Select
	cast([Name] as nvarchar(500)) [Country],
	cast([Code] as char(5)) [Code],
	cast([CreatedOn] as datetime) [Created_RWXCountries],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXCountries],
	cast([DeletedOn] as datetime) [DeletedDate_RWXCountries],
	cast([ID] as int) [CountryID],
	cast([Enabled] as bit) [IsEnabled],
	cast([StateRequired] as bit) [IsStateRequired] 
From stg.[AH_Countries_FinalView]