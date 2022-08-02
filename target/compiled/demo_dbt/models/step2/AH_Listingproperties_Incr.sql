
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Listingproperties_Inter]
	)
Select * From hashData
