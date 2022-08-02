
With hashData as (
		Select
			HASHBYTES('MD5', concat(Path, Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Path_Inter]
	)
Select * From hashData
