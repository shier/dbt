{{ config(materialized='view',schema='stg')}}
Select
	[BlockSaleTestID],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CityTaxRate],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[AuctionBidderID],[DocketID],[SaleStatusID],[AuctioneerID],[Comments],[Created],[UpdateEventID],[BuyerCommOverride],[SellerCommOverride],[RunDate],[TaxOverride],[TaxExemptCode] 
From stg.[Auct_BlockSaleTest_Incr] 
Where [dbt_valid_to] is null