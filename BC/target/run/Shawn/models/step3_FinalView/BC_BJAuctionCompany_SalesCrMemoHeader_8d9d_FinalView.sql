create view "stg"."BC_BJAuctionCompany_SalesCrMemoHeader_8d9d_FinalView__dbt_tmp" as
    
Select
	[No] as [No_] ,
	[timestamp] ,
	[WCI_ImportedDocument] as [WCI-ImportedDocument] ,
	[WCI_LotNo] as [WCI-LotNo_] ,
	[WCI_AuctionID] as [WCI-AuctionID] ,
	[WCI_AuctionDocumentNo] as [WCI-AuctionDocumentNo_] 
From stg.[BC_BJAuctionCompany_SalesCrMemoHeader_8d9d_Incr] 
Where [dbt_valid_to] is null
