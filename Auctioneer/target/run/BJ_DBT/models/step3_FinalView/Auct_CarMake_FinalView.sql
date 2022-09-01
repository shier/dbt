create view "stg"."Auct_CarMake_FinalView__dbt_tmp" as
    
Select
	[CarMakeID],[Active],[WebActive],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CarMake_Incr] 
Where [dbt_valid_to] is null
