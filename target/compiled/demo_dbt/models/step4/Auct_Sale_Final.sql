
Select
	[SaleID],[HoldWire],[Price],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[SteveCommDollars],[SteveCommPerc],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[StateTaxRate],[AsSiterCommDollars],[AsSiterCommPerc],[ShipDateVerified],[Comments],[BillofLading],[BillofLadingText],[BMA],[Navision],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[AdjustedByUserName],[CarrierName],[ShipDate],[AdjustmentDate],[Created],[BlockSaleID],[CarrierID],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[UpdateEventID],[Legacy],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID] 
From stg.[Auct_Sale_Incr] 
Where [dbt_valid_to] is null