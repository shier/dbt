{{ config(materialized='view',schema='stg')}}
Select
	[COMMISSIONPERCENTAGE] [CommissionPercentage],
	[AUTOMOBILIACOMMISSIONPERCENTAGE] [AutomobiliaCommissionPercentage],
	[AUCTIONID] [AuctionID],
	[BIDDERSTATUSID] [BidderStatusID],
	[FEEID] [FeeID],
	[RANGESTART] [RangeStart],
	[RANGEEND] [RangeEnd]
From stg.[Auct_AuctionBidderStatus_Raw]
