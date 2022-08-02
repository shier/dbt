
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Feedbacks_Inter]
	)
Select * From hashData
