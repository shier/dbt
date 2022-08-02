
With hashData as (
		Select
			HASHBYTES('MD5', concat(Barcode, TransactionID, EventName, SectionName, Seatrow, Seatnum, Cast(BidderID as varchar), Cast(AuctionID as varchar), Cast(Length as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderBarcodes_Inter]
	)
Select * From hashData
