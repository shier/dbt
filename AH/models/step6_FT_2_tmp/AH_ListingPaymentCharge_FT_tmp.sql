{{ config(materialized='table',schema='stg')}}
SELECT
		lpc.[ListingPaymentChargeID],
		b.[Buyer_Skey],
		lpc.[BuyerId],
		lpc.[ListingID],
		lpc.[ChargeAmount],
		lpc.[TotalBid],
		lpc.[BidHoldPercentage],
		lpc.[MaximumBidCharge],
		lpc.[TransactionID],
		lpc.[CreatedDate],
		lpc.[UpdatedDate]
FROM 	[stg].[AH_ListingPaymentCharge_FT_stg] lpc
left join [dbo].[AH_Buyers_DM] b on lpc.BuyerId=b.UserID