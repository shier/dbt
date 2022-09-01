{{ config(materialized='view',schema='stg')}}
Select
	[CurrentAuctionID],[AuctionID],[Percentage] 
From [Auct_AuctionSeasonPercentage_Incr]