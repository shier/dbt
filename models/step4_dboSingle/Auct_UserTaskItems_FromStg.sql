{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaskItemID] as int) [TaskItemID],
	cast([UserID] as int) [UserID] 
From stg.[Auct_UserTaskItems_FinalView]