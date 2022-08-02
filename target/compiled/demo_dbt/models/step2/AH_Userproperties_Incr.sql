
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Userproperties_Inter]
	)
Select * From hashData
