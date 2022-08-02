
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CustomerAccountID as varchar), Cast(AuctionID as varchar), Cast(TicketTypeID as varchar), Cast(CreatedByUserID as varchar), Cast(Quantity as varchar), Cast(Active as varchar), Cast(Created as varchar), TicketNumber, Comment)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CustomerAccountTicket_Inter]
	)
Select * From hashData
