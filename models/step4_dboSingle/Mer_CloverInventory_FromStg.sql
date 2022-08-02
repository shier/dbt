{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as varchar(100)) [CloverInventoryMerchantID],
	cast([CloverModifiedDate] as datetime) [CloverModifiedDate],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate],
	cast([Hidden] as int) [Hidden],
	cast([DefaultTaxRates] as int) [DefaultTaxRates],
	cast([IsRevenue] as int) [IsRevenue],
	cast([Price] as money) [Price],
	cast([Cost] as money) [Cost],
	cast([StockCount] as decimal) [StockCount],
	cast([PriceType] as varchar(100)) [PriceType],
	cast([UnitName] as varchar(100)) [UnitName],
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([Name] as varchar(500)) [Name],
	cast([AlternateName] as varchar(100)) [AlternateName],
	cast([Code] as varchar(100)) [Code],
	cast([SKU] as varchar(64)) [SKU] 
From stg.[Mer_CloverInventory_FinalView]