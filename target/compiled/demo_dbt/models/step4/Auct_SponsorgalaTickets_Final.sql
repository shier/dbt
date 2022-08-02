
Select
	[SponsorgalaTicketsID],[Created],[GalaTicketTypeID],[SponsorAuctionID],[SponsorgalaTicketsNumber],[UpdateEventID] 
From stg.[Auct_SponsorgalaTickets_Incr] 
Where [dbt_valid_to] is null