create view "stg"."Auct_SponSorTickets_FinalView__dbt_tmp" as
    
Select
	[SponSorTicketsID],[SponSorTicketsAMT],[TicketTypeID],[SponsorAuctionID],[Created],[UpdateEventID],[NumberRange] 
From stg.[Auct_SponSorTickets_Incr] 
Where [dbt_valid_to] is null
