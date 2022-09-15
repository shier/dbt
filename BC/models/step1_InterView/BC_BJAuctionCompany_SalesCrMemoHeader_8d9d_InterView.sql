{{ config(materialized='view',schema='stg')}}
Select
	cast([No_] as nvarchar(4000)) [No],
	cast([timestamp] as nvarchar(4000)) [timestamp],
	[WCI-ImportedDocument] as [WCI_ImportedDocument],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI_LotNo],
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI_AuctionID],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI_AuctionDocumentNo]
From stg.[BC_BJAuctionCompany_SalesCrMemoHeader_8d9d_Raw]
