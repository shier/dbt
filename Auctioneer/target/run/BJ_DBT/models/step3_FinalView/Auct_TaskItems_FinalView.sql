create view "stg"."Auct_TaskItems_FinalView__dbt_tmp" as
    
Select
	[TaskItemID],[TaskItemTypeID],[TaskID],[Created],[CompletedByUserID],[Completed],[Message],[CreatedByUserID],[AssignedByUserID],[NavigateURL] 
From stg.[Auct_TaskItems_Incr] 
Where [dbt_valid_to] is null
