{{ config(materialized='view',schema='stg')}}
Select
	[PreferredContactMethodID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PreferredContactMethod_Incr] 
Where [dbt_valid_to] is null