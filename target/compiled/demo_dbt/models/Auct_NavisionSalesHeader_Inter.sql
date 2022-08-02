
Select
	cast(EXTERNALDOCUMENTNO as nvarchar(4000)) ExternalDocumentno,
	cast(LOTNO as nvarchar(4000)) Lotno,
	cast(AUCTIONID as nvarchar(4000)) AuctionID,
	cast(GLOBALDIMENSION1CODE as nvarchar(4000)) GlobalDimension1Code,
	cast(GLOBALDIMENSION2CODE as nvarchar(4000)) GlobalDimension2Code,
	cast(BUSINESSUNIT as nvarchar(4000)) BusinessUnit,
	cast(AUCTIONDOCUMENTNO as nvarchar(4000)) AuctionDocumentno,
	cast(SELLTOCUSTOMERNO as nvarchar(4000)) SelltoCustomerno,
	cast(BILLTOCUSTOMERNO as nvarchar(4000)) BilltoCustomerno,
	cast(YOURREFERENCE as nvarchar(4000)) YourReference,
	cast(STATUSMESSAGE as nvarchar(4000)) StatusMessage,
	cast(JOBNO as nvarchar(4000)) Jobno,
	SHIPMENTDATE ShipmentDate,
	DUEDATE DueDate,
	PAYMENTDATE PaymentDate,
	DOCUMENTDATE DocumentDate,
	POSTINGDATE PostingDate,
	DOCUMENTTYPE DocumentType,
	STATUS Status,
	IMPORTED Imported,
	WROTETONAVISION WrotetoNavision
From Auct_NavisionSalesHeader_Raw