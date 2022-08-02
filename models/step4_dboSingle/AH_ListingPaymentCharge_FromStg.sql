{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([BuyerID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([CreatedOn] as datetime) [Created],
	cast([TransactionID] as nvarchar(30)) [TransactionID],
	cast([ChargeAmount] as decimal(24,2)) [ChargeAmount],
	cast([TotalBID] as decimal(24,2)) [TotalBid],
	cast([BidHoldPercentage] as decimal(24,3)) [BidHoldPercentage],
	cast([MaximumBidCharge] as decimal(24,2)) [MaximumBidCharge] 
From stg.[AH_ListingPaymentCharge_FinalView]