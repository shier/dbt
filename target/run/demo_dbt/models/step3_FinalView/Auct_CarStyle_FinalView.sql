create view "stg"."Auct_CarStyle_FinalView__dbt_tmp" as
    
Select
	[CarStyleID],[Name],[Created],[UpdateEventID],[Active] 
From stg.[Auct_CarStyle_Incr] 
Where [dbt_valid_to] is null
