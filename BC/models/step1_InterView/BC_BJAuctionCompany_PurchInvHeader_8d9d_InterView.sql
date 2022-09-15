{{ config(materialized='view',schema='stg')}}
Select
	cast([No_] as nvarchar(4000)) [No],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI_AuctionDocumentNo],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI_LotNo],
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI_AuctionID],
	cast([WCI-AssignedUserIDBJ] as nvarchar(4000)) [WCI_AssignedUserIDBJ],
	cast([timestamp] as nvarchar(4000)) [timestamp]
From stg.[BC_BJAuctionCompany_PurchInvHeader_8d9d_Raw]
