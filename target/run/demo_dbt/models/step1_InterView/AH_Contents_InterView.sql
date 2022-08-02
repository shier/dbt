create view "stg"."AH_Contents_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[DisplayOrder] [DisplayOrder],
	[UseHTMLEditor] [Usehtmleditor],
	[UserDefined] [Userdefined],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Text] as nvarchar(4000)) [Text],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Culture] as nvarchar(4000)) [Culture],
	cast([PageTitle] as nvarchar(4000)) [PageTitle]
From stg.[AH_Contents_Raw]
