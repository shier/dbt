
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Updateddate as varchar), Cast(RemovedDate as varchar), Cast(Available as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyInventoryLevels_Inter]
	)
Select * From hashData
