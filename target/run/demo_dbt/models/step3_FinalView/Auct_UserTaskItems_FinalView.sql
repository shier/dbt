create view "stg"."Auct_UserTaskItems_FinalView__dbt_tmp" as
    
Select
	[TaskItemID],[UserID] 
From stg.[Auct_UserTaskItems_Incr] 
Where [dbt_valid_to] is null
