
Select
	[SaleAdjustmentID],[Created],[ShipDate],[AdjustmentDate],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[SteveCommDollars],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[SteveCommPerc],[AsSiterCommDollars],[AsSiterCommPerc],[SaleID],[BlockSaleID],[CarrierID],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[UpdateEventID],[Legacy],[BillofLadingText],[BMA],[Navision],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[ShipDateVerified],[Comments],[BillofLading],[AdjustedByUserName],[CarrierName] 
From stg.[Auct_SaleAdjustment_Incr] 
Where [dbt_valid_to] is null