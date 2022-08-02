{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaskTypeID] as int) [TaskTypeID],
	cast([UserID] as int) [UserID] 
From stg.[Auct_UserTaskTypes_FinalView]