{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionID] as int) [AuctionID],
	cast([AuctionBidderNumber] as int) [AuctionBidderNumber],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([BlockedByUserID] as int) [BlockedByUserID] 
From stg.[Auct_BlockedBidderNumbers_FinalView]