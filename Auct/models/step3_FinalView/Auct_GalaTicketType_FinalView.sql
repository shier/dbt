{{ config(materialized='view',schema='stg')}}
Select
	[GalaTicketTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_GalaTicketType_Incr] 
Where [dbt_valid_to] is null