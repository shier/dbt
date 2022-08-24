create view "dbo_stg"."Auct_AuctionSeasonPercentage_InterView__dbt_tmp" as
    
Select
	[CURRENTAUCTIONID] [CurrentAuctionID],
	[AUCTIONID] [AuctionID],
	[PERCENTAGE] [Percentage]
From stg.[Auct_AuctionSeasonPercentage_Raw]
