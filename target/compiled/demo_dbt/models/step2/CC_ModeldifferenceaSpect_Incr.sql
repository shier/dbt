
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Owner], [OID], [Name], [Xml], Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ModeldifferenceaSpect_Inter]
	)
Select * From hashData
