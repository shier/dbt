{{ config(materialized='view',schema='stg')}}
Select
	[DealerstatID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Dealerstat_Incr] 
Where [dbt_valid_to] is null