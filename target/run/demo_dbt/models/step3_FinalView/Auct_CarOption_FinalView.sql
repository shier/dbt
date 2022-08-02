create view "stg"."Auct_CarOption_FinalView__dbt_tmp" as
    
Select
	[CarOptionID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CarOption_Incr] 
Where [dbt_valid_to] is null
