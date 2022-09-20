
  
  if object_id ('"dbo"."AH_ListingPaymentCharge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingPaymentCharge__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingPaymentCharge__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingPaymentCharge__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingPaymentCharge__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."AH_ListingPaymentCharge__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingPaymentCharge__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingPaymentCharge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingPaymentCharge__dbt_tmp_temp_view"
    end


