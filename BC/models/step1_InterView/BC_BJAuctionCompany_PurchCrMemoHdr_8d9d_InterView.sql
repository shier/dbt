{{ config(materialized='view',schema='stg')}}
Select
	cast([No_] as nvarchar(4000)) [No],
	cast([timestamp] as nvarchar(4000)) [timestamp],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI_AuctionDocumentNo],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI_LotNo],
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI_AuctionID],
	cast([WCI-AssignedUserIDBJ] as nvarchar(4000)) [WCI_AssignedUserIDBJ]
From stg.[BC_BJAuctionCompany_PurchCrMemoHdr_8d9d_Raw]
