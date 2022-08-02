
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Feeschedules_Inter]
	)
Select * From hashData
