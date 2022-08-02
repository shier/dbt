
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([OID], [Parent], [Name], Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_HCategory_Inter]
	)
Select * From hashData
