{{ config(materialized='view',schema='stg')}}
Select
	[CommissionPercentage],[AutomobiliaCommissionPercentage],[AuctionID],[BidderStatusID],[FeeID],[RangeStart],[RangeEnd] 
From [Auct_AuctionBidderStatus_Incr]