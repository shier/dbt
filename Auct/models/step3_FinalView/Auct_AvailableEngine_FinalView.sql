{{ config(materialized='view',schema='stg')}}
Select
	[AvailableEngineID],[CarModelID],[CarEngineID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableEngine_Incr] 
Where [dbt_valid_to] is null