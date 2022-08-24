{{ config(materialized='view',schema='stg')}}
Select
	[BidderStatusID],[CommissionPercentage],[AutomobiliaCommissionPercentage],[AuctionID],[FeeID],[RangeStart],[RangeEnd] 
From stg.[Auct_AuctionBidderStatus_Incr] 
Where [dbt_valid_to] is null