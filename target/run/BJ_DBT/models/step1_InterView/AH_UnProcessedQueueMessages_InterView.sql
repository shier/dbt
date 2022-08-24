create view "stg"."AH_UnProcessedQueueMessages_InterView__dbt_tmp" as
    
Select
	cast([QueueName] as nvarchar(4000)) [QueueName],
	cast([QueueData] as nvarchar(4000)) [QueueData],
	[QueueOrder] [QueueOrder]
From stg.[AH_UnProcessedQueueMessages_Raw]
