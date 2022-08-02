
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_GlCategory_Inter]
	)
Select * From hashData
