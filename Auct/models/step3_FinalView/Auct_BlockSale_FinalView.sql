{{ config(materialized='view',schema='stg')}}
Select
	[BlockSaleID],[AuctionBidderID],[DocketID],[SaleStatusID],[AuctioneerID],[Comments],[Created],[UpdateEventID],[BuyerCommOverride],[SellerCommOverride],[RunDate],[TaxOverride],[TaxExemptCode],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CityTaxRate],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars] 
From stg.[Auct_BlockSale_Incr] 
Where [dbt_valid_to] is null