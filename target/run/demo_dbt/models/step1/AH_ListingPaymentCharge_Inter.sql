
  
  if object_id ('"stg"."AH_ListingPaymentCharge_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingPaymentCharge_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingPaymentCharge_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingPaymentCharge_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingPaymentCharge_Inter__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "stg"."AH_ListingPaymentCharge_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingPaymentCharge_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingPaymentCharge_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingPaymentCharge_Inter__dbt_tmp_temp_view"
    end


