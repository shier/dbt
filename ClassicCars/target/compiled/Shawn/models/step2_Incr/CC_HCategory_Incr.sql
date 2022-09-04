
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([OID], [Parent], [Name], Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_HCategory_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."CC_HCategory_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
