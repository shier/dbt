
Select
	cast([CommissionPercentage] as numeric(18,4)) [COMMISSIONPERCENTAGE],
	cast([AutomobiliaCommissionPercentage] as numeric(18,4)) [AUTOMOBILIACOMMISSIONPERCENTAGE],
	cast([AuctionID] as int) [AUCTIONID],
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([FeeID] as int) [FEEID],
	cast([RangeStart] as int) [RANGESTART],
	cast([RangeEnd] as int) [RANGEEND] 
From stg.[Auct_AuctionBidderStatus_FinalView]