create view "stg"."Auct_CarType_FinalView__dbt_tmp" as
    
Select
	[CarTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CarType_Incr] 
Where [dbt_valid_to] is null
