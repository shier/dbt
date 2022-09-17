
  
  if object_id ('"dbo_stg"."AH_ListingPaymentCharge_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_ListingPaymentCharge_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_stg"."AH_ListingPaymentCharge_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "dbo_stg"."AH_ListingPaymentCharge_FT_stg__dbt_tmp"
    end


   EXEC('create view dbo_stg.AH_ListingPaymentCharge_FT_stg__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo_stg"."AH_ListingPaymentCharge_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_stg.AH_ListingPaymentCharge_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_stg"."AH_ListingPaymentCharge_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_ListingPaymentCharge_FT_stg__dbt_tmp_temp_view"
    end


