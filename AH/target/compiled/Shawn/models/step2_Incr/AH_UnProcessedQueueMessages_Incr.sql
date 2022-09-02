
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([QueueName], [QueueData], Cast([QueueOrder] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_UnProcessedQueueMessages_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."AH_UnProcessedQueueMessages_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
