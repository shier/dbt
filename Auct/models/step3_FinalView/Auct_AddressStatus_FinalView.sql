{{ config(materialized='view',schema='stg')}}
Select
	[AddressStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_AddressStatus_Incr] 
Where [dbt_valid_to] is null