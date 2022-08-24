{{ config(materialized='view',schema='stg')}}
Select
	[TASKTYPEID] [TaskTypeID],
	[USERID] [UserID]
From stg.[Auct_UserTaskTypes_Raw]
