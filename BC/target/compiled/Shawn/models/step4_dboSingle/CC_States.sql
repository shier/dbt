
Select
	cast([IsActive] as bit) [IsActive],
	cast([StateCode] as nvarchar(4000)) [StateCode],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([StateNameslug] as nvarchar(4000)) [StateNameSlug],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([CountryID] as int) [CountryId] 
From stg.[CC_States_FinalView]