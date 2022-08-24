create view "stg"."AH_CategoryCustomFields_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CategoryId] [CategoryID],
	[CustomFieldId] [CustomFieldID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_CategoryCustomFields_Raw]