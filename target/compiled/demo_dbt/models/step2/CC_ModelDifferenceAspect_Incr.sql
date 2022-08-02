
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([OID], [Name], [Xml], [Owner], Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ModelDifferenceAspect_Inter]
	)
Select * From hashData
