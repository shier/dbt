
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_CustomFields_Inter]
	)
Select * From hashData
