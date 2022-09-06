create view "stg"."Auct_AuctionBidderStatus_FinalView__dbt_tmp" as
    
Select
	[CommissionPercentage],[AutomobiliaCommissionPercentage],[AuctionID],[BidderStatusID],[FeeID],[RangeStart],[RangeEnd] 
From [Auct_AuctionBidderStatus_Incr]
