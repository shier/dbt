
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_CustomFieldenums_Inter]
	)
Select * From hashData
