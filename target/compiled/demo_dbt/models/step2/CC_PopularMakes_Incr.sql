
With hashData as (
		Select
			HASHBYTES('MD5', Cast(DateinsertedUTC as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_PopularMakes_Inter]
	)
Select * From hashData
