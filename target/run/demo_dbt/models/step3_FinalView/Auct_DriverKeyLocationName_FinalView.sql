create view "stg"."Auct_DriverKeyLocationName_FinalView__dbt_tmp" as
    
Select
	[DriverKeyLocationNameID],[KeyLocationName],[Created],[UpdateEventID] 
From stg.[Auct_DriverKeyLocationName_Incr] 
Where [dbt_valid_to] is null
