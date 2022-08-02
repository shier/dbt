
  
  if object_id ('"stg"."Auct_Sale_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sale_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Sale_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Sale_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Sale_Final__dbt_tmp_temp_view as
    
Select
	[SaleID],[HoldWire],[Price],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[SteveCommDollars],[SteveCommPerc],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[AsSiterCommDollars],[AsSiterCommPerc],[ShipDateVerified],[Comments],[BillofLading],[BillofLadingText],[BMA],[Navision],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[AdjustedByUserName],[CarrierName],[ShipDate],[AdjustmentDate],[Created],[BlockSaleID],[CarrierID],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[UpdateEventID],[Legacy],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID] 
From stg.[Auct_Sale_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Sale_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Sale_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Sale_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sale_Final__dbt_tmp_temp_view"
    end


