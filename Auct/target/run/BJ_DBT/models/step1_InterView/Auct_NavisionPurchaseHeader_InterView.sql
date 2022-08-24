create view "dbo_stg"."Auct_NavisionPurchaseHeader_InterView__dbt_tmp" as
    
Select
	[DOCUMENTTYPE] [DocumentType],
	cast([AUCTIONDOCUMENTNO] as nvarchar(4000)) [AuctionDocumentno],
	cast([BUYFROMVENDORNO] as nvarchar(4000)) [BuyFromVendorno],
	cast([PAYTOVENDORNO] as nvarchar(4000)) [PaytoVendorno],
	cast([YOURREFERENCE] as nvarchar(4000)) [YourReference],
	[DOCUMENTDATE] [DocumentDate],
	[POSTINGDATE] [PostingDate],
	[DUEDATE] [DueDate],
	cast([VENDORORDERNO] as nvarchar(4000)) [VendorOrderno],
	cast([VENDORSHIPMENTNO] as nvarchar(4000)) [VendorShipmentno],
	cast([VENDORINVOICENO] as nvarchar(4000)) [VendorInvoiceno],
	cast([VENDORCRMEMONO] as nvarchar(4000)) [Vendorcrmemono],
	cast([VENDORQUOTENO] as nvarchar(4000)) [Vendorquoteno],
	[STATUS] [Status],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	[PAYMENTDATE] [PaymentDate],
	[IMPORTED] [Imported],
	cast([JOBNO] as nvarchar(4000)) [Jobno],
	cast([LOTNO] as nvarchar(4000)) [Lotno],
	cast([AUCTIONID] as nvarchar(4000)) [AuctionID],
	cast([GLOBALDIM1CODE] as nvarchar(4000)) [Globaldim1Code],
	cast([GLOBALDIM2CODE] as nvarchar(4000)) [Globaldim2Code],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	[WROTETONAVISION] [WrotetoNavision],
	[EXPECTEDRECEIPTDATE] [ExpectedReceiptDate]
From stg.[Auct_NavisionPurchaseHeader_Raw]