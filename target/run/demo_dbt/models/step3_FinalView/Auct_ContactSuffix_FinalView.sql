create view "stg"."Auct_ContactSuffix_FinalView__dbt_tmp" as
    
Select
	[ContactSuffixID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ContactSuffix_Incr] 
Where [dbt_valid_to] is null
