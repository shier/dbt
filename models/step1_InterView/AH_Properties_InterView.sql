{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Value] as nvarchar(4000)) [Value],
	cast([Name] as nvarchar(4000)) [Name],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[LineItemId] [LineItemID]
From stg.[AH_Properties_Raw]
