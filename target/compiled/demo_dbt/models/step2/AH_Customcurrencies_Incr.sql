
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Customcurrencies_Inter]
	)
Select * From hashData
