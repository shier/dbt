{{ config(materialized='view',schema='stg')}}
Select
	[AuctionID],[AuctionBidderNumber],[Comments],[BlockedByUserID] 
From [Auct_BlockedBidderNumbers_Incr]