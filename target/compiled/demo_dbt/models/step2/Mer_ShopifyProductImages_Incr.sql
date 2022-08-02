
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ImageHeight as varchar), Cast(ImageWidth as varchar), Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), ProductID, ImageURL, Alt)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyProductImages_Inter]
	)
Select * From hashData
