
Select
	cast(INVOICENAME as nvarchar(4000)) InvoiceName,
	CREATED Created,
	INVOICEID InvoiceID,
	AUCTIONID AuctionID,
	CONTACTID ContactID,
	UPDATEEVENTID UpdateEventID
From Auct_Invoice_Raw