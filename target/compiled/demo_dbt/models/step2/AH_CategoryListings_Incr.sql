
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_CategoryListings_Inter]
	)
Select * From hashData
