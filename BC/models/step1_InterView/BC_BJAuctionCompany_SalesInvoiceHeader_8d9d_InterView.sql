{{ config(materialized='view',schema='stg')}}
Select
	cast([No_] as nvarchar(4000)) [No],
	cast([timestamp] as nvarchar(4000)) [timestamp],
	[WCI-ImportedDocument] as [WCI_ImportedDocument],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI_AuctionDocumentNo],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI_LotNo],
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI_AuctionID]
From stg.[BC_BJAuctionCompany_SalesInvoiceHeader_8d9d_Raw]
