create view "stg"."Auct_CarEngine_FinalView__dbt_tmp" as
    
Select
	[CarEngineID],[Displacement],[Horsepower],[Name],[Cylinders],[Created],[UpdateEventID] 
From stg.[Auct_CarEngine_Incr] 
Where [dbt_valid_to] is null
