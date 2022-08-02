
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Cast(WebActive as varchar), Cast(Created as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarFeatures_Inter]
	)
Select * From hashData
