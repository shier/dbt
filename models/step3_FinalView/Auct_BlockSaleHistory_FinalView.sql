{{ config(materialized='view',schema='stg')}}
Select
	[BlockSaleID],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[AuctionBidderID],[DocketID],[SaleStatusID],[AuctioneerID],[Comments],[Created],[UpdateEventID],[BuyerCommOverride],[SellerCommOverride],[RunDate],[TaxOverride],[TaxExemptCode] 
From stg.[Auct_BlockSaleHistory_Incr] 
Where [dbt_valid_to] is null