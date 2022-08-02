
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_StripeCustomers_Inter]
	)
Select * From hashData
