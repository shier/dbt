
With hashData as (
		Select
			HASHBYTES('MD5', concat(DropDownText, DisplayText, Active, Cast(ModelID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Style_Inter]
	)
Select * From hashData
