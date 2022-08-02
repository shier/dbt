
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BJInsurance_Inter]
	)
Select * From hashData
