
Select
	cast([No_] as nvarchar(4000)) [No_],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI-LotNo_],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI-AuctionDocumentNo_],
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI-AuctionID],
	cast([WCI-ImportedDocument] as int) [WCI-ImportedDocument] 
From stg.[BC_BJAuctionCompany_SalesCrMemoHeader_8d9d_FinalView]