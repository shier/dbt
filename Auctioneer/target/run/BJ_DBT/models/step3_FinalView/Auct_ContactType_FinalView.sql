create view "stg"."Auct_ContactType_FinalView__dbt_tmp" as
    
Select
	[ContactTypeID],[Name],[Created],[UpdateEventID],[Active] 
From stg.[Auct_ContactType_Incr] 
Where [dbt_valid_to] is null
