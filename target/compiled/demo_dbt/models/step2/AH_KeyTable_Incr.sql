
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_KeyTable_Inter]
	)
Select * From hashData
