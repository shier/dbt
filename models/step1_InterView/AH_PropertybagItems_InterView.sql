{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[PropertyBagId] [PropertybagID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value]
From stg.[AH_PropertybagItems_Raw]
