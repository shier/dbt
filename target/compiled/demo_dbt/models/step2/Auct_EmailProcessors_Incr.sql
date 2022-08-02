
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), ProcessorClass)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EmailProcessors_Inter]
	)
Select * From hashData
