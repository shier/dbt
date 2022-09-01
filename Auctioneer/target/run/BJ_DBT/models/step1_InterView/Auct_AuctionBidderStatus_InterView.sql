create view "stg"."Auct_AuctionBidderStatus_InterView__dbt_tmp" as
    
Select
	[BIDDERSTATUSID] [BidderStatusID],
	[COMMISSIONPERCENTAGE] [CommissionPercentage],
	[AUTOMOBILIACOMMISSIONPERCENTAGE] [AutomobiliaCommissionPercentage],
	[AUCTIONID] [AuctionID],
	[FEEID] [FeeID],
	[RANGESTART] [RangeStart],
	[RANGEEND] [RangeEnd]
From stg.[Auct_AuctionBidderStatus_Raw]
