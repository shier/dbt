{{ config(materialized='view',schema='stg')}}
Select
	[TaskItemID],[TaskItemTypeID],[TaskID],[Created],[CompletedByUserID],[Completed],[Message],[CreatedByUserID],[AssignedByUserID],[NavigateURL] 
From stg.[Auct_TaskItems_Incr] 
Where [dbt_valid_to] is null