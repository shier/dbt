
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Handle], [VariantSKU])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyProductSold_Inter]
	)
Select * From hashData
