create view "stg"."AH_SalesTaxRates_InterView__dbt_tmp" as
    
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
