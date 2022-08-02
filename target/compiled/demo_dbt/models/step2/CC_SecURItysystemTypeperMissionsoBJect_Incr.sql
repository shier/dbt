
With hashData as (
		Select
			HASHBYTES('MD5', concat(TargetType, Owner, Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(OBJectType as varchar), Cast(Allowwrite as varchar), Cast(AllowCreate as varchar), Cast(AllowDelete as varchar), Cast(AllowNavigate as varchar), Cast(AllowRead as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemTypeperMissionsoBJect_Inter]
	)
Select * From hashData
