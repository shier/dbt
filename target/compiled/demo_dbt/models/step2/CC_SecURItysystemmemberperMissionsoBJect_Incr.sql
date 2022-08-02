
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AllowRead as varchar), Cast(Allowwrite as varchar), Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Members, Criteria, Owner)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemmemberperMissionsoBJect_Inter]
	)
Select * From hashData
