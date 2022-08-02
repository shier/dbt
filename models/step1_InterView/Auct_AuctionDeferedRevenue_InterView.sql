{{ config(materialized='view',schema='stg')}}
Select
	[DEFEREDAUCTIONID] [DeferedAuctionID],
	[DEFEREDPERCENTAGE] [DeferedPercentage],
	[PARENTAUCTIONID] [ParentAuctionID],
	[GLACCOUNTNUMBER] [GlAccountNumber]
From stg.[Auct_AuctionDeferedRevenue_Raw]
