
Select
	[BlockSaleID],[Comments],[TaxExemptCode],[Created],[RunDate],[CityTaxDollars],[CityTaxRate],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[Price],[BuyerCommPerc],[BuyerCommDollars],[SellerCommOverride],[TaxOverride],[AuctionBidderID],[DocketID],[SaleStatusID],[AuctioneerID],[UpdateEventID],[BuyerCommOverride] 
From stg.[Auct_BlockSaleHistory_Incr] 
Where [dbt_valid_to] is null