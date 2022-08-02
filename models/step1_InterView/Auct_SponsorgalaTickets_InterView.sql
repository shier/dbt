{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORGALATICKETSID] [SponsorgalaTicketsID],
	[GALATICKETTYPEID] [GalaTicketTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORGALATICKETSNUMBER] [SponsorgalaTicketsNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorgalaTickets_Raw]
