{{ config(materialized='view',schema='stg')}}
Select
	[AssignID],[UserID],[Text],[PriorityID],[DateCreated] 
From stg.[Auct_ConsignmentAssignment_Incr] 
Where [dbt_valid_to] is null