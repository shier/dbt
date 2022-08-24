create view "stg"."Auct_UserTaskTypes_InterView__dbt_tmp" as
    
Select
	[TASKTYPEID] [TaskTypeID],
	[USERID] [UserID]
From stg.[Auct_UserTaskTypes_Raw]
