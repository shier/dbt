{{ config(materialized='table',schema='dbo')}}
with updateData as (
    select 
		FTstg.[ListingPaymentChargeID],
		FTtmp.[Buyer_Skey],
		FTstg.[ListingID],
		FTstg.[ChargeAmount],
		FTstg.[TotalBid],
		FTstg.[BidHoldPercentage],
		FTstg.[MaximumBidCharge],
		FTstg.[TransactionID],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate]
    from stg.AH_ListingPaymentCharge_FT_tmp as FTtmp 
    join stg.AH_ListingPaymentCharge_FT_stg as FTstg 
    on FTstg.ListingPaymentChargeID=FTtmp.ListingPaymentChargeID
)
,
insertData as (
    select 
        [ListingPaymentChargeID],
        [Buyer_Skey],
        [ListingID],
        [ChargeAmount],
        [TotalBid],
        [BidHoldPercentage],
        [MaximumBidCharge],
        [TransactionID],
        [CreatedDate],
        [UpdatedDate]
    from stg.AH_ListingPaymentCharge_FT_tmp
    where ListingPaymentChargeID not in (select  ListingPaymentChargeID from stg.AH_ListingPaymentCharge_FT_stg)
)
SELECT
	[ListingPaymentChargeID],
	[Buyer_Skey],
	[ListingID],
	[ChargeAmount],
	[TotalBid],
	[BidHoldPercentage],
	[MaximumBidCharge],
	[TransactionID],
	[CreatedDate],
	[UpdatedDate]
from updateData

union all

SELECT
	[ListingPaymentChargeID],
	[Buyer_Skey],
	[ListingID],
	[ChargeAmount],
	[TotalBid],
	[BidHoldPercentage],
	[MaximumBidCharge],
	[TransactionID],
	[CreatedDate],
	[UpdatedDate]
from insertData