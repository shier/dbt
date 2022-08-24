create view "stg"."Auct_UserTaskTypes_FinalView__dbt_tmp" as
    
Select
	[TaskTypeID],[UserID] 
From stg.[Auct_UserTaskTypes_Incr] 
Where [dbt_valid_to] is null
