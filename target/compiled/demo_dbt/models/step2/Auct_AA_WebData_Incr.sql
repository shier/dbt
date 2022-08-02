
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CarInfoID] as varchar), [Horsepower], Cast([OriginalHorsepower] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AA_WebData_Inter]
	)
Select * From hashData
