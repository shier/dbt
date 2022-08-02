
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Listingdecorations_Inter]
	)
Select * From hashData
