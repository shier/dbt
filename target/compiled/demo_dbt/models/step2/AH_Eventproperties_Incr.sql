
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Eventproperties_Inter]
	)
Select * From hashData
