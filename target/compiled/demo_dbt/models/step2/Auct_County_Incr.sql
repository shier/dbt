
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([StateAbbreviation], [County])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_County_Inter]
	)
Select * From hashData
