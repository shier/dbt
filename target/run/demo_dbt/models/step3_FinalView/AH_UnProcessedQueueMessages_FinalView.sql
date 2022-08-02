create view "stg"."AH_UnProcessedQueueMessages_FinalView__dbt_tmp" as
    
Select
	[QueueName],[QueueData],[QueueOrder] 
From [AH_UnProcessedQueueMessages_Incr]
