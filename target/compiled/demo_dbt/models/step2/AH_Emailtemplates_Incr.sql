
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Emailtemplates_Inter]
	)
Select * From hashData
