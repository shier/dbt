
Select
	TicketID TicketID,
	cast(Barcode as nvarchar(4000)) Barcode,
	cast(TransactionID as nvarchar(4000)) TransactionID,
	cast(EventName as nvarchar(4000)) EventName,
	cast(SectionName as nvarchar(4000)) SectionName,
	cast(SeatRow as nvarchar(4000)) Seatrow,
	cast(SeatNum as nvarchar(4000)) Seatnum,
	BidderID BidderID,
	AuctionID AuctionID,
	Length Length
From Auct_BidderBarcodes_Raw