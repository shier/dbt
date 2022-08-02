create view "stg"."Auct_AuctionDeferedRevenue_InterView__dbt_tmp" as
    
Select
	[DEFEREDAUCTIONID] [DeferedAuctionID],
	[DEFEREDPERCENTAGE] [DeferedPercentage],
	[PARENTAUCTIONID] [ParentAuctionID],
	[GLACCOUNTNUMBER] [GlAccountNumber]
From stg.[Auct_AuctionDeferedRevenue_Raw]
