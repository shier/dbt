
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(OptimisticLockField as varchar), Users, OID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecuritysystemRoleroles_Inter]
	)
Select * From hashData
