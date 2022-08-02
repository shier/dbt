
Select
	[BlockSaleID],[AuctionBidderID],[DocketID],[SaleStatusID],[AuctioneerID],[UpdateEventID],[BuyerCommOverride],[SellerCommOverride],[TaxOverride],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[Created],[RunDate],[Comments],[TaxExemptCode] 
From stg.[Auct_BlockSale_Incr] 
Where [dbt_valid_to] is null