
With hashData as (
		Select
			HASHBYTES('MD5', concat(TargetKey, Cast(TargetType as varchar), Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(OBJectType as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_XpweakReference_Inter]
	)
Select * From hashData
