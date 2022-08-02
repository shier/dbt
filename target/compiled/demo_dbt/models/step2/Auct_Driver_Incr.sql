
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Name, Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Driver_Inter]
	)
Select * From hashData
