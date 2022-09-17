{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorgalaTicketsID] as int) [SPONSORGALATICKETSID],
	cast([GalaTicketTypeID] as int) [GALATICKETTYPEID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([SponsorgalaTicketsNumber] as int) [SPONSORGALATICKETSNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SponsorgalaTickets_FinalView]