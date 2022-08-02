{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponSorTicketsID] as int) [SponSorTicketsID],
	cast([SponSorTicketsAMT] as numeric(19,4)) [SponSorTicketsAMT],
	cast([TicketTypeID] as int) [TicketTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([NumberRange] as nvarchar(4000)) [NumberRange] 
From stg.[Auct_SponSorTickets_FinalView]