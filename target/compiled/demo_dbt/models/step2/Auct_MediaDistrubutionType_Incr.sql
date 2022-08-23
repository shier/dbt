
With hashData as (
		Select
			HASHBYTES('MD5', Name) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaDistrubutionType_Inter]
	)
Select * From hashData