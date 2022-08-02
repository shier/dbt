{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaskItemID] as int) [TaskItemID],
	cast([TaskItemTypeID] as int) [TaskItemTypeID],
	cast([TaskID] as int) [TaskID],
	cast([Created] as datetime) [Created],
	cast([CompletedByUserID] as int) [CompletedByUserID],
	cast([Completed] as datetime) [Completed],
	cast([Message] as nvarchar(4000)) [Message],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([AssignedByUserID] as int) [AssignedByUserID],
	cast([NavigateURL] as nvarchar(4000)) [NavigateURL] 
From stg.[Auct_TaskItems_FinalView]