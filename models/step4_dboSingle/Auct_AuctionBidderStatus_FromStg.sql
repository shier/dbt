{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderStatusID] as int) [BidderStatusID],
	cast([CommissionPercentage] as numeric(18,4)) [CommPct],
	cast([AutomobiliaCommissionPercentage] as numeric(18,4)) [AutomobiliaCommPct],
	cast([AuctionID] as int) [AuctionID],
	cast([FeeID] as int) [FeeID],
	cast([RangeStart] as int) [RangeStart],
	cast([RangeEnd] as int) [RangeEnd] 
From stg.[Auct_AuctionBidderStatus_FinalView]