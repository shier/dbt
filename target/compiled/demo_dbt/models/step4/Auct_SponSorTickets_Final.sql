
Select
	[SponSorTicketsID],[NumberRange],[TicketTypeID],[SponsorAuctionID],[UpdateEventID],[SponSorTicketsAMT],[Created] 
From stg.[Auct_SponSorTickets_Incr] 
Where [dbt_valid_to] is null