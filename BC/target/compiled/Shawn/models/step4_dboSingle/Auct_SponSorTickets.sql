
Select
	cast([SponSorTicketsAMT] as numeric(19,4)) [SPONSORTICKETSAMT],
	cast([SponSorTicketsID] as int) [SPONSORTICKETSID],
	cast([TicketTypeID] as int) [TICKETTYPEID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([NumberRange] as nvarchar(4000)) [NUMBERRANGE] 
From stg.[Auct_SponSorTickets_FinalView]