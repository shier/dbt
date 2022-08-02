{{ config(materialized='view',schema='stg')}}
Select
	[DrivertentLocationID],[DrivertentLocationName],[Created],[UpdateEventID] 
From stg.[Auct_DrivertentLocation_Incr] 
Where [dbt_valid_to] is null