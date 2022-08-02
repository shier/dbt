{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Shipping] as nvarchar(4000)) [Shipping],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[StateId] [StateID],
	[UserId] [UserID],
	[TaxRate] [TaxRate]
From stg.[AH_SalesTaxRates_Raw]
