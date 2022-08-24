
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([MakeModelFK] as varchar), Cast([TagFK] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelTags_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."CC_MakeModelTags_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
