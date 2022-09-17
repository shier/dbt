{{ config(materialized='table',schema='dbo')}}
Select
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Shipping] as nvarchar(4000)) [Shipping],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([StateID] as int) [StateId],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([TaxRate] as numeric(19,4)) [TaxRate] 
From stg.[AH_SalesTaxRates_FinalView]