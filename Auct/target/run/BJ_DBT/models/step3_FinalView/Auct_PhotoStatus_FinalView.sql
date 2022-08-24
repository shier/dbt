create view "stg"."Auct_PhotoStatus_FinalView__dbt_tmp" as
    
Select
	[PhotoStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PhotoStatus_Incr] 
Where [dbt_valid_to] is null
