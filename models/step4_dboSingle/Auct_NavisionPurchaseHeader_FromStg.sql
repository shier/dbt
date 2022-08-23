{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentType] as int) [DocumentType],
	cast([AuctionDocumentno] as nvarchar(4000)) [AuctionDocumentno],
	cast([BuyFromVendorno] as nvarchar(4000)) [BuyFromVendorno],
	cast([PaytoVendorno] as nvarchar(4000)) [PaytoVendorno],
	cast([YourReference] as nvarchar(4000)) [YourReference],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([DueDate] as datetime) [DueDate],
	cast([VendorOrderno] as nvarchar(4000)) [VendorOrderNO],
	cast([VendorShipmentno] as nvarchar(4000)) [VendorShipmentNO],
	cast([VendorInvoiceno] as nvarchar(4000)) [VendorInvoiceNO],
	cast([Vendorcrmemono] as nvarchar(4000)) [VendorcrmemoNO],
	cast([Vendorquoteno] as nvarchar(4000)) [VendorquoteNO],
	cast([Status] as int) [Status],
	cast([StatusMessage] as nvarchar(4000)) [StatusMessage],
	cast([PaymentDate] as datetime) [PaymentDate],
	cast([Imported] as int) [Imported],
	cast([Jobno] as nvarchar(4000)) [Jobno],
	cast([Lotno] as nvarchar(4000)) [Lotno],
	cast([AuctionID] as nvarchar(4000)) [AuctionID],
	cast([Globaldim1Code] as nvarchar(4000)) [Globaldim1Code],
	cast([Globaldim2Code] as nvarchar(4000)) [Globaldim2Code],
	cast([BusinessUnit] as nvarchar(4000)) [BusinessUnit],
	cast([WrotetoNavision] as int) [WrotetoNavision],
	cast([ExpectedReceiptDate] as date) [ExpectedReceiptDate] 
From stg.[Auct_NavisionPurchaseHeader_FinalView]