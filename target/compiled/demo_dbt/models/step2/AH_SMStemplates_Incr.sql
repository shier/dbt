
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_SMStemplates_Inter]
	)
Select * From hashData