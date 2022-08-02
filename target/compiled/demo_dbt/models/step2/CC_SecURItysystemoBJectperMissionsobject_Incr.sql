
With hashData as (
		Select
			HASHBYTES('MD5', concat(Criteria, Owner, Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(AllowRead as varchar), Cast(Allowwrite as varchar), Cast(AllowDelete as varchar), Cast(AllowNavigate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemoBJectperMissionsobject_Inter]
	)
Select * From hashData
