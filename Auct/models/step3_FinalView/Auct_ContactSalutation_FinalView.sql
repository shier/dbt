{{ config(materialized='view',schema='stg')}}
Select
	[ContactSalutationID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ContactSalutation_Incr] 
Where [dbt_valid_to] is null