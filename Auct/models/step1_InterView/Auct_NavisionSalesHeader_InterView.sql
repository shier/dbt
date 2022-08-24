{{ config(materialized='view',schema='stg')}}
Select
	[DOCUMENTTYPE] [DocumentType],
	cast([AUCTIONDOCUMENTNO] as nvarchar(4000)) [AuctionDocumentno],
	cast([SELLTOCUSTOMERNO] as nvarchar(4000)) [SelltoCustomerno],
	cast([BILLTOCUSTOMERNO] as nvarchar(4000)) [BilltoCustomerno],
	cast([YOURREFERENCE] as nvarchar(4000)) [YourReference],
	[DOCUMENTDATE] [DocumentDate],
	[POSTINGDATE] [PostingDate],
	[SHIPMENTDATE] [ShipmentDate],
	[DUEDATE] [DueDate],
	[STATUS] [Status],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	[PAYMENTDATE] [PaymentDate],
	[IMPORTED] [Imported],
	cast([JOBNO] as nvarchar(4000)) [Jobno],
	cast([EXTERNALDOCUMENTNO] as nvarchar(4000)) [ExternalDocumentno],
	cast([LOTNO] as nvarchar(4000)) [Lotno],
	cast([AUCTIONID] as nvarchar(4000)) [AuctionID],
	cast([GLOBALDIMENSION1CODE] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GLOBALDIMENSION2CODE] as nvarchar(4000)) [GlobalDimension2Code],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	[WROTETONAVISION] [WrotetoNavision]
From stg.[Auct_NavisionSalesHeader_Raw]
