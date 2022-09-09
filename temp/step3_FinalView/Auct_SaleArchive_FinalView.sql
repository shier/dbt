{{ config(materialized='view',schema='stg')}}
Select
	[SaleArchiveID],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[SteveCommDollars],[SteveCommPerc],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[AsSiterCommDollars],[AsSiterCommPerc],[Price],[SaleID],[BlockSaleID],[ShipDateVerified],[CarrierID],[Comments],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[Created],[UpdateEventID],[BillofLading],[BillofLadingText],[BMA],[Legacy],[ShipDate],[Navision],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[AdjustedByUserName],[AdjustmentDate],[CarrierName] 
From stg.[Auct_SaleArchive_Incr] 
Where [dbt_valid_to] is null