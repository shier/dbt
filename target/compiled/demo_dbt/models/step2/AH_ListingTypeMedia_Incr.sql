
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingTypeMedia_Inter]
	)
Select * From hashData
