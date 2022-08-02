
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_PropertybagItems_Inter]
	)
Select * From hashData
