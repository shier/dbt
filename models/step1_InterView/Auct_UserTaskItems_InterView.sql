{{ config(materialized='view',schema='stg')}}
Select
	[TASKITEMID] [TaskItemID],
	[USERID] [UserID]
From stg.[Auct_UserTaskItems_Raw]
