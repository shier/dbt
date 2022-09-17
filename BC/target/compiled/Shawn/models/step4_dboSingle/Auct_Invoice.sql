
Select
	cast([InvoiceID] as int) [INVOICEID],
	cast([InvoiceName] as nvarchar(512)) [INVOICENAME],
	cast([AuctionID] as int) [AUCTIONID],
	cast([ContactID] as int) [CONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Invoice_FinalView]