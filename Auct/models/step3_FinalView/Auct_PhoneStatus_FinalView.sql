{{ config(materialized='view',schema='stg')}}
Select
	[PhoneStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PhoneStatus_Incr] 
Where [dbt_valid_to] is null