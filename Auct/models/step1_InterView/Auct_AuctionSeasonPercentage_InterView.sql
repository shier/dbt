{{ config(materialized='view',schema='stg')}}
Select
	[CURRENTAUCTIONID] [CurrentAuctionID],
	[AUCTIONID] [AuctionID],
	[PERCENTAGE] [Percentage]
From stg.[Auct_AuctionSeasonPercentage_Raw]
