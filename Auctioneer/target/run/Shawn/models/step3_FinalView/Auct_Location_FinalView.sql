create view "stg"."Auct_Location_FinalView__dbt_tmp" as
    
Select
	[LocationID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Location_Incr] 
Where [dbt_valid_to] is null
