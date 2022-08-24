
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Handle], [VariantSKU])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyProductSold_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Mer_ShopifyProductSold_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
