{{ config(materialized='view',schema='stg')}}
Select
	[ContactStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ContactStatus_Incr] 
Where [dbt_valid_to] is null