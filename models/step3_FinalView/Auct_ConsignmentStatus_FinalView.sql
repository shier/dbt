{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ConsignmentStatus_Incr] 
Where [dbt_valid_to] is null