create view "stg"."Auct_SponsorgalaTickets_FinalView__dbt_tmp" as
    
Select
	[SponsorgalaTicketsID],[GalaTicketTypeID],[SponsorAuctionID],[SponsorgalaTicketsNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorgalaTickets_Incr] 
Where [dbt_valid_to] is null
