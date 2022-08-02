{{ config(materialized='view',schema='stg')}}
Select
	[PrivilegeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Privilege_Incr] 
Where [dbt_valid_to] is null