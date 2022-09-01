create view "stg"."Auct_ContactStatus_FinalView__dbt_tmp" as
    
Select
	[ContactStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ContactStatus_Incr] 
Where [dbt_valid_to] is null
