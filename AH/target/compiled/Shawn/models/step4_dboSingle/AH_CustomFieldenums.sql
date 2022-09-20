
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([CustomFieldID] as int) [CustomFieldId],
	cast([Enabled] as bit) [Enabled] 
From stg.[AH_CustomFieldenums_FinalView]