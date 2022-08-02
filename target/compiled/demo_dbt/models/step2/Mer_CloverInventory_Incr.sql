
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CloverModifiedDate as varchar), Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), Cast(Hidden as varchar), Cast(DefaultTaxRates as varchar), Cast(IsRevenue as varchar), Cast(Price as varchar), Cast(Cost as varchar), Cast(StockCount as varchar), PriceType, UnitName, MerchantID, Name, AlternateName, Code, SKU)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_CloverInventory_Inter]
	)
Select * From hashData
