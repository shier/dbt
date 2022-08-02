{{ config(materialized='view',schema='stg')}}
Select
	[ContactOrganizationID],[OrganizationID],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_ContactOrganization_Incr] 
Where [dbt_valid_to] is null