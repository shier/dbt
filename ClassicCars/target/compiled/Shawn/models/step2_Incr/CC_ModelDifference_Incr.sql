
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Version] as varchar), Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar), [OID], [UserID], [ConTextID])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ModelDifference_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."CC_ModelDifference_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
