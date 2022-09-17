{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionID] as int) [AUCTIONID],
	cast([AuctionBidderNumber] as int) [AUCTIONBIDDERNUMBER],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([BlockedByUserID] as int) [BLOCKEDBYUSERID] 
From stg.[Auct_BlockedBidderNumbers_FinalView]