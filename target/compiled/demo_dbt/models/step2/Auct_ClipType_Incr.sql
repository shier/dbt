
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ClipType_Inter]
	)
Select * From hashData
