{{ config(materialized='view',schema='stg')}}
Select
	[QueueName],[QueueData],[QueueOrder] 
From [AH_UnProcessedQueueMessages_Incr] 
Where [dbt_valid_to] is null