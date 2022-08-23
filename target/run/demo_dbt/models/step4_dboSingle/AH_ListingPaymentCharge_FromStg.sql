
  
  if object_id ('"dbo"."AH_ListingPaymentCharge_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingPaymentCharge_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingPaymentCharge_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingPaymentCharge_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingPaymentCharge_FromStg__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."AH_ListingPaymentCharge_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingPaymentCharge_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingPaymentCharge_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingPaymentCharge_FromStg__dbt_tmp_temp_view"
    end


