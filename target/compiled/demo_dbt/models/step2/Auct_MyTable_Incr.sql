
With hashData as (
		Select
			HASHBYTES('MD5', concat(Code, Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MyTable_Inter]
	)
Select * From hashData
