
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Listings_Inter]
	)
Select * From hashData
