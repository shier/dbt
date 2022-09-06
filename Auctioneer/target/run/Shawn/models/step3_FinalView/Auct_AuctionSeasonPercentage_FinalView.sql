create view "stg"."Auct_AuctionSeasonPercentage_FinalView__dbt_tmp" as
    
Select
	[CurrentAuctionID],[AuctionID],[Percentage] 
From [Auct_AuctionSeasonPercentage_Incr]
