
With hashData as (
		Select
			HASHBYTES('MD5', concat(NumberRange, Cast(TicketTypeID as varchar), Cast(SponsorAuctionID as varchar), Cast(UpdateEventID as varchar), Cast(SponSorTicketsAMT as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponSorTickets_Inter]
	)
Select * From hashData
