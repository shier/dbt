{{ config(materialized='table',schema='dbo')}}
Select
	cast([DeferedAuctionID] as int) [DeferedAuctionID],
	cast([DeferedPercentage] as numeric(18,6)) [DeferedPercentage],
	cast([ParentAuctionID] as int) [ParentAuctionID],
	cast([GlAccountNumber] as int) [GlAccountNumber] 
From stg.[Auct_AuctionDeferedRevenue_FinalView]