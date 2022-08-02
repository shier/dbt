
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ChangePasswordonFirstLogon as varchar), Cast(IsActive as varchar), Cast(OptimisticLockField as varchar), Cast(GcRecord as varchar), Cast(OBJectType as varchar), OID, StoredPassword)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItysystemUser_Inter]
	)
Select * From hashData
