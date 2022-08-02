
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingTypeproperties_Inter]
	)
Select * From hashData
