
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(PrimarythRead as varchar), Cast(DaTestamp as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ThReadTracking_Inter]
	)
Select * From hashData
