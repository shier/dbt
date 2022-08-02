{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Culture] as nvarchar(4000)) [Culture],
	cast([Subject] as nvarchar(4000)) [SuBJect],
	cast([Body] as nvarchar(4000)) [Body],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_Emailtemplatecontents_Raw]
