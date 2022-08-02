
With hashData as (
		Select
			HASHBYTES('MD5', concat(Make, Model, Cast(IsActive as varchar), Cast(Year as varchar), Cast(VehicleCount as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelcache_Inter]
	)
Select * From hashData
