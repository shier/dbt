{{ config(materialized='view',schema='stg')}}
Select
	[ConnectID],[Name],[UsersID],[ConfigID],[Created],[UpdateEventID] 
From stg.[Auct_ConnectAssignment_Incr] 
Where [dbt_valid_to] is null