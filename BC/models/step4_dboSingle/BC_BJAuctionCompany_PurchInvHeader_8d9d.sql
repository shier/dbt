{{ config(materialized='table',schema='dbo')}}
Select
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI-AuctionID],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI-AuctionDocumentNo_],
	cast([WCI-AssignedUserIDBJ] as nvarchar(4000)) [WCI-AssignedUserIDBJ],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI-LotNo_],
	cast([No_] as nvarchar(4000)) [No_],
	cast([timestamp] as varbinary(8000)) [timestamp] 
From stg.[BC_BJAuctionCompany_PurchInvHeader_8d9d_FinalView]