{{ config(materialized='view',schema='stg')}}
Select
	[TaskItemID],[UserID] 
From stg.[Auct_UserTaskItems_Incr] 
Where [dbt_valid_to] is null