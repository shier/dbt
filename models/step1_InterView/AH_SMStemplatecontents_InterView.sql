{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Body] as nvarchar(4000)) [Body],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn]
From stg.[AH_SMStemplatecontents_Raw]
