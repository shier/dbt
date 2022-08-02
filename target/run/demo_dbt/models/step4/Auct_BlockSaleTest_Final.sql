
  
  if object_id ('"stg"."Auct_BlockSaleTest_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleTest_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BlockSaleTest_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BlockSaleTest_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_BlockSaleTest_Final__dbt_tmp_temp_view as
    
Select
	[BlockSaleTestID],[Price],[BuyerCommPerc],[BuyerCommDollars],[CityTaxDollars],[CityTaxRate],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[Created],[RunDate],[SaleStatusID],[AuctioneerID],[UpdateEventID],[BuyerCommOverride],[SellerCommOverride],[TaxOverride],[AuctionBidderID],[DocketID],[Comments],[TaxExemptCode] 
From stg.[Auct_BlockSaleTest_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_BlockSaleTest_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BlockSaleTest_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BlockSaleTest_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleTest_Final__dbt_tmp_temp_view"
    end


