{{ config(materialized='view',schema='stg')}}
Select
	[PhoneTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PhoneType_Incr] 
Where [dbt_valid_to] is null