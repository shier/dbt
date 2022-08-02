
Select
	[BidderStatusID],[AuctionID],[FeeID],[RangeStart],[RangeEnd],[CommissionPercentage],[AutomobiliaCommissionPercentage] 
From stg.[Auct_AuctionBidderStatus_Incr] 
Where [dbt_valid_to] is null