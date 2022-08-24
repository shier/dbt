{{ config(materialized='view',schema='stg')}}
Select
	[SponsorStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SponsorStatus_Incr] 
Where [dbt_valid_to] is null