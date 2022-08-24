create view "dbo_stg"."Auct_SponsorgalaTickets_InterView__dbt_tmp" as
    
Select
	[SPONSORGALATICKETSID] [SponsorgalaTicketsID],
	[GALATICKETTYPEID] [GalaTicketTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORGALATICKETSNUMBER] [SponsorgalaTicketsNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorgalaTickets_Raw]
