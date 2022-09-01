create view "stg"."Auct_DrivertentLocation_FinalView__dbt_tmp" as
    
Select
	[DrivertentLocationID],[DrivertentLocationName],[Created],[UpdateEventID] 
From stg.[Auct_DrivertentLocation_Incr] 
Where [dbt_valid_to] is null
