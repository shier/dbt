create view "stg"."Auct_BidderBarcodes_FinalView__dbt_tmp" as
    
Select
	[TicketID],[TransactionID],[EventName],[SectionName],[Seatrow],[Seatnum],[Barcode],[Length],[BidderID],[AuctionID] 
From stg.[Auct_BidderBarcodes_Incr] 
Where [dbt_valid_to] is null
