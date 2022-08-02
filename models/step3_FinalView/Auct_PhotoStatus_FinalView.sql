{{ config(materialized='view',schema='stg')}}
Select
	[PhotoStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PhotoStatus_Incr] 
Where [dbt_valid_to] is null