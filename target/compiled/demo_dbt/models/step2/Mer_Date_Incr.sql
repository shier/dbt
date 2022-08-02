
With hashData as (
		Select
			HASHBYTES('MD5', Cast(Date as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Date_Inter]
	)
Select * From hashData
