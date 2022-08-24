{{ config(materialized='view',schema='stg')}}
Select
	[BIDDERSTATUSID] [BidderStatusID],
	[COMMISSIONPERCENTAGE] [CommissionPercentage],
	[AUTOMOBILIACOMMISSIONPERCENTAGE] [AutomobiliaCommissionPercentage],
	[AUCTIONID] [AuctionID],
	[FEEID] [FeeID],
	[RANGESTART] [RangeStart],
	[RANGEEND] [RangeEnd]
From stg.[Auct_AuctionBidderStatus_Raw]
