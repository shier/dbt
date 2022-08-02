
With hashData as (
		Select
			HASHBYTES('MD5', concat(InvoiceName, Cast(Created as varchar), Cast(AuctionID as varchar), Cast(ContactID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Invoice_Inter]
	)
Select * From hashData
