
Select
	[SaleArchiveID],[CityTaxRate],[SteveCommDollars],[SteveCommPerc],[AsSiterCommDollars],[AsSiterCommPerc],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[SaleID],[BlockSaleID],[CarrierID],[Created],[ShipDate],[AdjustmentDate],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[UpdateEventID],[Legacy],[ShipDateVerified],[Comments],[AdjustmentReason],[AdjustedByUserName],[CarrierName],[BillofLading],[BillofLadingText],[BMA],[Navision],[TaxExemptCode],[ArBitrated] 
From stg.[Auct_SaleArchive_Incr] 
Where [dbt_valid_to] is null