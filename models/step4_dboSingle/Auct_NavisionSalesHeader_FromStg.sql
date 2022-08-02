{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentType] as int) [DocumentType],
	cast([AuctionDocumentno] as nvarchar(4000)) [AuctionDocumentNO],
	cast([SelltoCustomerno] as nvarchar(4000)) [SelltoCustomerNO],
	cast([BilltoCustomerno] as nvarchar(4000)) [BilltoCustomerNO],
	cast([YourReference] as nvarchar(4000)) [YourReference],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([ShipmentDate] as datetime) [ShipmentDate],
	cast([DueDate] as datetime) [DueDate],
	cast([Status] as int) [Status],
	cast([StatusMessage] as nvarchar(4000)) [StatusMessage],
	cast([PaymentDate] as datetime) [PaymentDate],
	cast([Imported] as int) [Imported],
	cast([Jobno] as nvarchar(4000)) [JobNO],
	cast([ExternalDocumentno] as nvarchar(4000)) [ExternalDocumentNO],
	cast([Lotno] as nvarchar(4000)) [LotNO],
	cast([AuctionID] as nvarchar(4000)) [AuctionID],
	cast([GlobalDimension1Code] as nvarchar(4000)) [Globaldimension1Code],
	cast([GlobalDimension2Code] as nvarchar(4000)) [Globaldimension2Code],
	cast([BusinessUnit] as nvarchar(4000)) [BusinessUnit],
	cast([WrotetoNavision] as int) [WrotetoNavision] 
From stg.[Auct_NavisionSalesHeader_FinalView]