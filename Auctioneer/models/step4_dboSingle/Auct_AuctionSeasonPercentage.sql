{{ config(materialized='table',schema='dbo')}}
Select
	cast([CurrentAuctionID] as int) [CURRENTAUCTIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Percentage] as numeric(18,6)) [PERCENTAGE] 
From stg.[Auct_AuctionSeasonPercentage_FinalView]