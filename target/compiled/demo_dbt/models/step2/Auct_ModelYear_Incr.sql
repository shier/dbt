
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ModelID] as varchar), Cast([YearID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ModelYear_Inter]
	)
Select * From hashData
