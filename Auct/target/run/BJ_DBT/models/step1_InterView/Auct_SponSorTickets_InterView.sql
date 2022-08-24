create view "dbo_stg"."Auct_SponSorTickets_InterView__dbt_tmp" as
    
Select
	[SPONSORTICKETSID] [SponSorTicketsID],
	[SPONSORTICKETSAMT] [SponSorTicketsAMT],
	[TICKETTYPEID] [TicketTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([NUMBERRANGE] as nvarchar(4000)) [NumberRange]
From stg.[Auct_SponSorTickets_Raw]
