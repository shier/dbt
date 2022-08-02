
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Contents_Inter]
	)
Select * From hashData
