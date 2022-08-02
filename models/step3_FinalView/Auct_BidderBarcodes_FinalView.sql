{{ config(materialized='view',schema='stg')}}
Select
	[TicketID],[TransactionID],[EventName],[SectionName],[Seatrow],[Seatnum],[Barcode],[Length],[BidderID],[AuctionID] 
From stg.[Auct_BidderBarcodes_Incr] 
Where [dbt_valid_to] is null