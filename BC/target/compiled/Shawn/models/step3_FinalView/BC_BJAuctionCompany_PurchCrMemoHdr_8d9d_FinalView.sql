
Select
	[No] as [No_] ,
	[timestamp] ,
	[WCI_AuctionDocumentNo] as [WCI-AuctionDocumentNo_] ,
	[WCI_LotNo] as [WCI-LotNo_] ,
	[WCI_AuctionID] as [WCI-AuctionID] ,
	[WCI_AssignedUserIDBJ] as [WCI-AssignedUserIDBJ] 
From stg.[BC_BJAuctionCompany_PurchCrMemoHdr_8d9d_Incr] 
Where [dbt_valid_to] is null