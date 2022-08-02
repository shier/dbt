{{ config(materialized='view',schema='stg')}}
Select
	[ContactTypeID],[Name],[Created],[UpdateEventID],[Active] 
From stg.[Auct_ContactType_Incr] 
Where [dbt_valid_to] is null