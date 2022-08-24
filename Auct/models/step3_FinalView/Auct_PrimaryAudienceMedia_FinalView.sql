{{ config(materialized='view',schema='stg')}}
Select
	[PrimaryAudienceMediaID],[MediaID],[PrimaryAudienceID],[Created],[UpdateEventID] 
From stg.[Auct_PrimaryAudienceMedia_Incr] 
Where [dbt_valid_to] is null