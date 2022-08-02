
  
  if object_id ('"stg"."Auct_SaleArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleArchive_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleArchive_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SaleArchive_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SaleArchive_Final__dbt_tmp_temp_view as
    
Select
	[SaleArchiveID],[CityTaxRate],[SteveCommDollars],[SteveCommPerc],[AsSiterCommDollars],[AsSiterCommPerc],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[SaleID],[BlockSaleID],[CarrierID],[Created],[ShipDate],[AdjustmentDate],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[UpdateEventID],[Legacy],[ShipDateVerified],[Comments],[AdjustmentReason],[AdjustedByUserName],[CarrierName],[BillofLading],[BillofLadingText],[BMA],[Navision],[TaxExemptCode],[ArBitrated] 
From stg.[Auct_SaleArchive_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SaleArchive_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleArchive_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleArchive_Final__dbt_tmp_temp_view"
    end


