{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Shipping] as nvarchar(4000)) [Shipping],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([StateID] as int) [StateID],
	cast([UserID] as int) [UserID],
	cast([TaxRate] as numeric(194)) [TaxRate] 
From stg.[AH_SalesTaxRates_FinalView]