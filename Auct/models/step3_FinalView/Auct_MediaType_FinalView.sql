{{ config(materialized='view',schema='stg')}}
Select
	[MediaTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_MediaType_Incr] 
Where [dbt_valid_to] is null