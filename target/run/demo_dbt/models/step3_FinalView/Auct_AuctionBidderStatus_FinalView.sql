create view "stg"."Auct_AuctionBidderStatus_FinalView__dbt_tmp" as
    
Select
	[BidderStatusID],[CommissionPercentage],[AutomobiliaCommissionPercentage],[AuctionID],[FeeID],[RangeStart],[RangeEnd] 
From stg.[Auct_AuctionBidderStatus_Incr] 
Where [dbt_valid_to] is null
