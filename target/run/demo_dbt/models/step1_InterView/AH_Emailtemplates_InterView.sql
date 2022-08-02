create view "stg"."AH_Emailtemplates_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[Enabled] [Enabled],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[AH_Emailtemplates_Raw]
