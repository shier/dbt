{{ config(materialized='view',schema='stg')}}
Select
	[SponsorLeadID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SponsorLead_Incr] 
Where [dbt_valid_to] is null