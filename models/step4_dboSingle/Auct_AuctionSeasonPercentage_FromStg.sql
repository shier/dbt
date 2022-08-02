{{ config(materialized='table',schema='dbo')}}
Select
	cast([CurrentAuctionID] as int) [CurrentAuctionID],
	cast([AuctionID] as int) [AuctionID],
	cast([Percentage] as numeric(18,6)) [Percentage] 
From stg.[Auct_AuctionSeasonPercentage_FinalView]