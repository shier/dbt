create view "stg"."Auct_ContactSalutation_FinalView__dbt_tmp" as
    
Select
	[ContactSalutationID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ContactSalutation_Incr] 
Where [dbt_valid_to] is null
