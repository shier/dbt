
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast([Key] as varchar), Cast([Active] as varchar), [Name])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PropertyType_Inter]
	)
Select * From hashData
