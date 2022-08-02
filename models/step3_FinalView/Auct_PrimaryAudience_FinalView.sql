{{ config(materialized='view',schema='stg')}}
Select
	[PrimaryAudienceID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PrimaryAudience_Incr] 
Where [dbt_valid_to] is null