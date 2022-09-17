{{ config(materialized='table',schema='dbo')}}
Select
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI-AuctionID],
	cast([No_] as nvarchar(4000)) [No_],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI-LotNo_],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI-AuctionDocumentNo_],
	cast([WCI-ImportedDocument] as int) [WCI-ImportedDocument] 
From stg.[BC_BJAuctionCompany_SalesInvoiceHeader_8d9d_FinalView]