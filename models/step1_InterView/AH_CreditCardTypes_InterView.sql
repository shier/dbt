{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[Enabled] [Enabled],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[AH_CreditCardTypes_Raw]
