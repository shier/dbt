{{ config(materialized='view',schema='stg')}}
Select
	[LocationID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Location_Incr] 
Where [dbt_valid_to] is null