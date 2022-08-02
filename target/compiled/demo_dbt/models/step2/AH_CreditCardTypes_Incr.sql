
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_CreditCardTypes_Inter]
	)
Select * From hashData
