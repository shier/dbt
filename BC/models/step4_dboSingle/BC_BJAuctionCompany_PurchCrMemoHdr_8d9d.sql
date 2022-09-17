{{ config(materialized='table',schema='dbo')}}
Select
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI-AuctionID],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI-AuctionDocumentNo_],
	cast([WCI-AssignedUserIDBJ] as nvarchar(4000)) [WCI-AssignedUserIDBJ],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI-LotNo_],
	cast([No_] as nvarchar(4000)) [No_] 
From stg.[BC_BJAuctionCompany_PurchCrMemoHdr_8d9d_FinalView]