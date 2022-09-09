{{ config(materialized='view',schema='stg')}}
Select
	[TicketID] [TicketID],
	cast([TransactionID] as nvarchar(4000)) [TransactionID],
	cast([EventName] as nvarchar(4000)) [EventName],
	cast([SectionName] as nvarchar(4000)) [SectionName],
	cast([SeatRow] as nvarchar(4000)) [Seatrow],
	cast([SeatNum] as nvarchar(4000)) [Seatnum],
	cast([Barcode] as nvarchar(4000)) [Barcode],
	[Length] [Length],
	[BidderID] [BidderID],
	[AuctionID] [AuctionID]
From stg.[Auct_BidderBarcodes_Raw]
