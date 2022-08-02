
With hashData as (
		Select
			HASHBYTES('MD5', concat(DropDownText, DisplayText, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Make_Inter]
	)
Select * From hashData
