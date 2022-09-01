{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORTICKETSID] [SponSorTicketsID],
	[SPONSORTICKETSAMT] [SponSorTicketsAMT],
	[TICKETTYPEID] [TicketTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([NUMBERRANGE] as nvarchar(4000)) [NumberRange]
From stg.[Auct_SponSorTickets_Raw]
