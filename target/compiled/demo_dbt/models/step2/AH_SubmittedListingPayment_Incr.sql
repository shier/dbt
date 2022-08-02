
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_SubmittedListingPayment_Inter]
	)
Select * From hashData
