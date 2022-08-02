{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Code] as nvarchar(4000)) [Code],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[Enabled] [Enabled],
	[StateRequired] [StateRequired]
From stg.[AH_Countries_Raw]
