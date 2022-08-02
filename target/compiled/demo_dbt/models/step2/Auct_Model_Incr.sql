
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(MakeID as varchar), DropDownText, DisplayText, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Model_Inter]
	)
Select * From hashData
