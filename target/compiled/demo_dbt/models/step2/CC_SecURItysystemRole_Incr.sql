
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(Isadministrative as varchar), Cast(CaneditModel as varchar), Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(OBJectType as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemRole_Inter]
	)
Select * From hashData
