{{ config(materialized='table',schema='dbo')}}
Select
	cast([BuyerID] as int) [BuyerId],
	cast([ListingID] as int) [ListingId],
	cast([ID] as int) [Id],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([TransactionID] as nvarchar(30)) [TransactionId],
	cast([ChargeAmount] as decimal(24,2)) [ChargeAmount],
	cast([TotalBID] as decimal(24,2)) [TotalBid],
	cast([BidHoldPercentage] as decimal(24,3)) [BidHoldPercentage],
	cast([MaximumBidCharge] as decimal(24,2)) [MaximumBidCharge] 
From stg.[AH_ListingPaymentCharge_FinalView]