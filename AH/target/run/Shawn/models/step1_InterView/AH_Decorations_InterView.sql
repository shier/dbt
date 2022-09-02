create view "stg"."AH_Decorations_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[PayToProceed] [PayToproceed],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([ValidFields] as nvarchar(4000)) [ValIDFields],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Name] as nvarchar(4000)) [Name],
	cast([FormatString] as nvarchar(4000)) [FormatString],
	[Amount] [Amount]
From stg.[AH_Decorations_Raw]
