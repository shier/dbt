{{ config(materialized='view',schema='stg')}}
Select
	[TASKITEMID] [TaskItemID],
	[TASKITEMTYPEID] [TaskItemTypeID],
	[TASKID] [TaskID],
	[CREATED] [Created],
	[COMPLETEDBYUSERID] [CompletedByUserID],
	[COMPLETED] [Completed],
	cast([MESSAGE] as nvarchar(4000)) [Message],
	[CREATEDBYUSERID] [CreatedByUserID],
	[ASSIGNEDBYUSERID] [AssignedByUserID],
	cast([NAVIGATEURL] as nvarchar(4000)) [NavigateURL]
From stg.[Auct_TaskItems_Raw]
