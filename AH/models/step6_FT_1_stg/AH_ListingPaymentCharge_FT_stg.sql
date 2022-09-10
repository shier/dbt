{{ config(materialized='table',schema='stg')}}
SELECT
		[Id] AS [ListingPaymentChargeID],
		[BuyerId],
		[ListingId] AS [ListingID],
		[ChargeAmount],
		[TotalBid],
		[BidHoldPercentage],
		[MaximumBidCharge],
		[TransactionId] AS [TransactionID],
		[CreatedOn] AS [CreatedDate],
		[UpdatedOn] AS [UpdatedDate]
FROM stg.AH_ListingPaymentCharge_FinalView;