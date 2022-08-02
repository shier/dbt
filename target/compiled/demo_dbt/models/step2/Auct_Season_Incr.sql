
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Season_Inter]
	)
Select * From hashData
