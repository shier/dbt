
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingActionproperties_Inter]
	)
Select * From hashData
