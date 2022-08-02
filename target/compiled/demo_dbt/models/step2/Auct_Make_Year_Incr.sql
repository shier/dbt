
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([MakeID] as varchar), Cast([YearID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Make_Year_Inter]
	)
Select * From hashData
