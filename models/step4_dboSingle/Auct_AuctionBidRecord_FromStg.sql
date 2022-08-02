{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionBidRecordID] as int) [AuctionbIDrecordID],
	cast([LotNumber] as numeric(180)) [LotNumber],
	cast([AuctionBidderNumber] as int) [AuctionbIDderNumber],
	cast([AuctionID] as int) [AuctionID],
	cast([Created] as DATETIME) [Created] 
From stg.[Auct_AuctionBidRecord_FinalView]