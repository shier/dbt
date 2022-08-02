{{ config(materialized='view',schema='stg')}}
Select
	[LotNumber],[AuctionID],[EndingBID],[ChangeTime] 
From [Auct_BidRecord_Incr]