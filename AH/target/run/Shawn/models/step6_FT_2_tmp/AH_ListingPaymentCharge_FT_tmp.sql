
  
  if object_id ('"dbo_stg"."AH_ListingPaymentCharge_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_ListingPaymentCharge_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_stg"."AH_ListingPaymentCharge_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "dbo_stg"."AH_ListingPaymentCharge_FT_tmp__dbt_tmp"
    end


   EXEC('create view dbo_stg.AH_ListingPaymentCharge_FT_tmp__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo_stg"."AH_ListingPaymentCharge_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_stg.AH_ListingPaymentCharge_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_stg"."AH_ListingPaymentCharge_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_ListingPaymentCharge_FT_tmp__dbt_tmp_temp_view"
    end


