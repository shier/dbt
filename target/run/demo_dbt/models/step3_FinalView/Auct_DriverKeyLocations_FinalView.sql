create view "stg"."Auct_DriverKeyLocations_FinalView__dbt_tmp" as
    
Select
	[DriverKeyLocationsID],[DriverInFormationID],[DriverKeyLocationNameID],[KeyLocationOther],[KeyLocationComment],[Created],[UpdateEventID] 
From stg.[Auct_DriverKeyLocations_Incr] 
Where [dbt_valid_to] is null
