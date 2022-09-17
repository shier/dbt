{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaskItemID] as int) [TASKITEMID],
	cast([TaskItemTypeID] as int) [TASKITEMTYPEID],
	cast([TaskID] as int) [TASKID],
	cast([Created] as datetime) [CREATED],
	cast([CompletedByUserID] as int) [COMPLETEDBYUSERID],
	cast([Completed] as datetime) [COMPLETED],
	cast([Message] as nvarchar(4000)) [MESSAGE],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([AssignedByUserID] as int) [ASSIGNEDBYUSERID],
	cast([NavigateURL] as nvarchar(4000)) [NAVIGATEURL] 
From stg.[Auct_TaskItems_FinalView]