
Select
	cast([Name] as nvarchar(500)) [Name],
	cast([Code] as char(5)) [Code],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([Enabled] as bit) [Enabled],
	cast([StateRequired] as bit) [StateRequired] 
From stg.[AH_Countries_FinalView]