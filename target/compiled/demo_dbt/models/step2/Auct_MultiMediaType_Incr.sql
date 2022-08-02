
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Name, Extension)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MultiMediaType_Inter]
	)
Select * From hashData
