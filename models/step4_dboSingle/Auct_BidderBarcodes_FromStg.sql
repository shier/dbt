{{ config(materialized='table',schema='dbo')}}
Select
	cast([TicketID] as bigint) [TicketID],
	cast([TransactionID] as nvarchar(4000)) [TransActionID],
	cast([EventName] as nvarchar(4000)) [EventName],
	cast([SectionName] as nvarchar(4000)) [SectionName],
	cast([Seatrow] as nvarchar(4000)) [SeatRow],
	cast([Seatnum] as nvarchar(4000)) [SeatNum],
	cast([Barcode] as nvarchar(4000)) [Barcode],
	cast([Length] as int) [Length],
	cast([BidderID] as int) [BidderID],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_BidderBarcodes_FinalView]