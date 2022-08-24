create view "stg"."Auct_UserTaskItems_InterView__dbt_tmp" as
    
Select
	[TASKITEMID] [TaskItemID],
	[USERID] [UserID]
From stg.[Auct_UserTaskItems_Raw]
