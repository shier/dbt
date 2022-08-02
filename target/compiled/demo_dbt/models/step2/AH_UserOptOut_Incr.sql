
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_UserOptOut_Inter]
	)
Select * From hashData
