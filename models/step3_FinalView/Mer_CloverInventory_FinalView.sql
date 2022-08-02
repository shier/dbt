{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CloverModifiedDate],[CreatedDate],[Updateddate],[RemovedDate],[Hidden],[DefaultTaxRates],[IsRevenue],[Price],[Cost],[StockCount],[PriceType],[UnitName],[MerchantID],[Name],[AlternateName],[Code],[SKU] 
From stg.[Mer_CloverInventory_Incr] 
Where [dbt_valid_to] is null