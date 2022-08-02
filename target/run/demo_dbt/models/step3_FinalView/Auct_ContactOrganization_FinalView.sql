create view "stg"."Auct_ContactOrganization_FinalView__dbt_tmp" as
    
Select
	[ContactOrganizationID],[OrganizationID],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_ContactOrganization_Incr] 
Where [dbt_valid_to] is null
