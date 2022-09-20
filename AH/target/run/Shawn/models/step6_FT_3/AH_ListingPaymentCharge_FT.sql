
  
  if object_id ('"dbo"."AH_ListingPaymentCharge_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingPaymentCharge_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingPaymentCharge_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingPaymentCharge_FT__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingPaymentCharge_FT__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."AH_ListingPaymentCharge_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingPaymentCharge_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingPaymentCharge_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingPaymentCharge_FT__dbt_tmp_temp_view"
    end


