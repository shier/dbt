{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[BuyerId] [BuyerID],
	[ListingId] [ListingID],
	[UpdatedOn] [UpdatedOn],
	[CreatedOn] [CreatedOn],
	cast([TransactionId] as nvarchar(4000)) [TransactionID],
	[ChargeAmount] [ChargeAmount],
	[TotalBid] [TotalBID],
	[BidHoldPercentage] [BidHoldPercentage],
	[MaximumBidCharge] [MaximumBidCharge]
From stg.[AH_ListingPaymentCharge_Raw]
