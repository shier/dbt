
With hashData as (
		Select
			HASHBYTES('MD5', concat(ListingImageFieldName, FileNamefragment, Cast(ShouldpopulateInitially as varchar), Cast(ImageWidth as varchar), Cast(ImageHeight as varchar), Cast(Quality as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingImagedefinition_Inter]
	)
Select * From hashData
