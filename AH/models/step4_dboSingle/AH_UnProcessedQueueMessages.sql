{{ config(materialized='table',schema='dbo')}}
Select
	cast([QueueName] as nvarchar(4000)) [QueueName],
	cast([QueueData] as nvarchar(4000)) [QueueData],
	cast([QueueOrder] as int) [QueueOrder] 
From stg.[AH_UnProcessedQueueMessages_FinalView]