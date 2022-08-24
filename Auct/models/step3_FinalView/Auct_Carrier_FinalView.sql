{{ config(materialized='view',schema='stg')}}
Select
	[CarrierID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Carrier_Incr] 
Where [dbt_valid_to] is null