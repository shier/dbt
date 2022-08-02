
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CarInfoID] as varchar), Cast([OriginalHorsepower] as varchar), [Horsepower])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WebData_Inter]
	)
Select * From hashData
