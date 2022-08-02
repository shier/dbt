
With hashData as (
		Select
			HASHBYTES('MD5', concat(ProductID, Title, SKU, FulfillmentService, Option1, Option2, Option3, Barcode, WEightUnit, InventoryItemID, Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), Cast(Position as varchar), Cast(Taxable as varchar), Cast(RequiresShipping as varchar), Cast(Price as varchar), Cast(CompAreatPrice as varchar), Cast(Grams as varchar), Cast(Inventoryqty as varchar), Cast(WEight as varchar), Cast(DelayedsellOnlineqty as varchar), Cast(OldInventoryqty as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyProductVariants_Inter]
	)
Select * From hashData
