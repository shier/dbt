
With hashData as (
		Select
			HASHBYTES('MD5', Cast(Enabled as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Feature_Inter]
	)
Select * From hashData
