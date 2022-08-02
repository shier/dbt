
Select
	cast(QueueName as nvarchar(4000)) QueueName,
	cast(QueueData as nvarchar(4000)) QueueData,
	QueueOrder QueueOrder
From AH_UnProcessedQueueMessages_Raw