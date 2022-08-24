
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([OID], [Name], [Xml], [Owner], Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ModelDifferenceAspect_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."CC_ModelDifferenceAspect_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
