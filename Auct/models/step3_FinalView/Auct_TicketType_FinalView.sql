{{ config(materialized='view',schema='stg')}}
Select
	[TicketTypeID],[Name],[Created],[UpdateEventID],[Active] 
From stg.[Auct_TicketType_Incr] 
Where [dbt_valid_to] is null