
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_SMStemplatecontents_Inter]
	)
Select * From hashData
