{{ config(materialized='view',schema='stg')}}
Select
	[SponSorTicketsID],[SponSorTicketsAMT],[TicketTypeID],[SponsorAuctionID],[Created],[UpdateEventID],[NumberRange] 
From stg.[Auct_SponSorTickets_Incr] 
Where [dbt_valid_to] is null