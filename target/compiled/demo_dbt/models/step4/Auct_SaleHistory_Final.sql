
Select
	[SaleID],[BMA],[Navision],[ShipDateVerified],[Comments],[BillofLading],[BillofLadingText],[Created],[ShipDate],[ShiptoContactID],[UpdateEventID],[Legacy],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[BlockSaleID],[CarrierID],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID] 
From stg.[Auct_SaleHistory_Incr] 
Where [dbt_valid_to] is null