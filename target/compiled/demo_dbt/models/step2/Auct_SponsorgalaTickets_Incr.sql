
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(GalaTicketTypeID as varchar), Cast(SponsorAuctionID as varchar), Cast(SponsorgalaTicketsNumber as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorgalaTickets_Inter]
	)
Select * From hashData
