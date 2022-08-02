
With hashData as (
		Select
			HASHBYTES('MD5', concat(DropDownText, DisplayText)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Year_Inter]
	)
Select * From hashData
