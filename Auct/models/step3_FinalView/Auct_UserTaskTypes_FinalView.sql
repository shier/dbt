{{ config(materialized='view',schema='stg')}}
Select
	[TaskTypeID],[UserID] 
From stg.[Auct_UserTaskTypes_Incr] 
Where [dbt_valid_to] is null