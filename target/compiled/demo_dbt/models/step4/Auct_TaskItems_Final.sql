
Select
	[TaskItemID],[CreatedByUserID],[AssignedByUserID],[TaskItemTypeID],[TaskID],[CompletedByUserID],[Created],[Completed],[Message],[NavigateURL] 
From stg.[Auct_TaskItems_Incr] 
Where [dbt_valid_to] is null