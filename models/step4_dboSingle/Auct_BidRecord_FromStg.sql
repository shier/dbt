{{ config(materialized='table',schema='dbo')}}
Select
	cast([LotNumber] as numeric(18,2)) [LotNumber],
	cast([AuctionID] as int) [AuctionID],
	cast([EndingBID] as int) [EndingBid],
	cast([ChangeTime] as DATETIME) [ChangeTime] 
From stg.[Auct_BidRecord_FinalView]