
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Feeproperties_Inter]
	)
Select * From hashData
