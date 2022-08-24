create view "stg"."Auct_CarTrim_FinalView__dbt_tmp" as
    
Select
	[CarTrimID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CarTrim_Incr] 
Where [dbt_valid_to] is null
