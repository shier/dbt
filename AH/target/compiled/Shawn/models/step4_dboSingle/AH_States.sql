
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Code] as nvarchar(4000)) [Code],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Enabled] as bit) [Enabled],
	cast([ID] as int) [Id],
	cast([CountryID] as int) [CountryId] 
From stg.[AH_States_FinalView]