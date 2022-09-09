{{ config(materialized='view',schema='stg')}}
Select
	[DriverKeyLocationNameID],[KeyLocationName],[Created],[UpdateEventID] 
From stg.[Auct_DriverKeyLocationName_Incr] 
Where [dbt_valid_to] is null