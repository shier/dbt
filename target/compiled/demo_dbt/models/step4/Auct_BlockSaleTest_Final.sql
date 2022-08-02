
Select
	[BlockSaleTestID],[Price],[BuyerCommPerc],[BuyerCommDollars],[CityTaxDollars],[CityTaxRate],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[Created],[RunDate],[SaleStatusID],[AuctioneerID],[UpdateEventID],[BuyerCommOverride],[SellerCommOverride],[TaxOverride],[AuctionBidderID],[DocketID],[Comments],[TaxExemptCode] 
From stg.[Auct_BlockSaleTest_Incr] 
Where [dbt_valid_to] is null