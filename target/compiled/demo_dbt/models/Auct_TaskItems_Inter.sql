
Select
	CREATEDBYUSERID CreatedByUserID,
	ASSIGNEDBYUSERID AssignedByUserID,
	TASKITEMID TaskItemID,
	TASKITEMTYPEID TaskItemTypeID,
	TASKID TaskID,
	COMPLETEDBYUSERID CompletedByUserID,
	CREATED Created,
	COMPLETED Completed,
	cast(MESSAGE as nvarchar(4000)) Message,
	cast(NAVIGATEURL as nvarchar(4000)) NavigateURL
From Auct_TaskItems_Raw