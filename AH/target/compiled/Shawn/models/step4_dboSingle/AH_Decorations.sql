
Select
	cast([PayToproceed] as bit) [PayToproceed],
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ValIDFields] as nvarchar(4000)) [ValIDFields],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Name] as nvarchar(4000)) [Name],
	cast([FormatString] as nvarchar(4000)) [FormatString],
	cast([Amount] as numeric(19,4)) [Amount] 
From stg.[AH_Decorations_FinalView]