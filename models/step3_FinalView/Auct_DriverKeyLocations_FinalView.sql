{{ config(materialized='view',schema='stg')}}
Select
	[DriverKeyLocationsID],[DriverInFormationID],[DriverKeyLocationNameID],[KeyLocationOther],[KeyLocationComment],[Created],[UpdateEventID] 
From stg.[Auct_DriverKeyLocations_Incr] 
Where [dbt_valid_to] is null