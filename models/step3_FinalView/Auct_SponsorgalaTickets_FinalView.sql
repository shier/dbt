{{ config(materialized='view',schema='stg')}}
Select
	[SponsorgalaTicketsID],[GalaTicketTypeID],[SponsorAuctionID],[SponsorgalaTicketsNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorgalaTickets_Incr] 
Where [dbt_valid_to] is null