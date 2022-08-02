{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorgalaTicketsID] as int) [SponsorgalaTicketsID],
	cast([GalaTicketTypeID] as int) [GalaTicketTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([SponsorgalaTicketsNumber] as int) [SponsorgalaTicketsNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SponsorgalaTickets_FinalView]