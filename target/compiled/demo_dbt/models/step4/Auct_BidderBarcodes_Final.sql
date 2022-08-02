
Select
	[TicketID],[Barcode],[TransactionID],[EventName],[SectionName],[Seatrow],[Seatnum],[BidderID],[AuctionID],[Length] 
From stg.[Auct_BidderBarcodes_Incr] 
Where [dbt_valid_to] is null