
  
  if object_id ('"stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleAdjustment_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SaleAdjustment_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SaleAdjustment_Final__dbt_tmp_temp_view as
    
Select
	[SaleAdjustmentID],[Created],[ShipDate],[AdjustmentDate],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[SteveCommDollars],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[SteveCommPerc],[AsSiterCommDollars],[AsSiterCommPerc],[SaleID],[BlockSaleID],[CarrierID],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[UpdateEventID],[Legacy],[BillofLadingText],[BMA],[Navision],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[ShipDateVerified],[Comments],[BillofLading],[AdjustedByUserName],[CarrierName] 
From stg.[Auct_SaleAdjustment_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SaleAdjustment_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleAdjustment_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"
    end


