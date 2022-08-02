
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingLocations_Inter]
	)
Select * From hashData
