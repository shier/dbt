
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([QueueName], [QueueData], Cast([QueueOrder] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_UnProcessedQueueMessages_InterView]
	)
Select * From hashData
