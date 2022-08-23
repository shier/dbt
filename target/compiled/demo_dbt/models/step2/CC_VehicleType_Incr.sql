
With hashData as (
		Select
			HASHBYTES('MD5', Description) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_VehicleType_Inter]
	)
Select * From hashData