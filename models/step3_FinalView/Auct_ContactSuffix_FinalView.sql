{{ config(materialized='view',schema='stg')}}
Select
	[ContactSuffixID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ContactSuffix_Incr] 
Where [dbt_valid_to] is null